---
title: Maximize Your Server Throughput with Scala
date: 2014-09-10 00:00:00 -07:00
layout: post
subtitle: Tech Insights, API, futures, programming, REST, scala, servers, throughput
cover_image: uploads/posts/server-throughput/scala.png
excerpt: As part of the Naytev engineering team, I’m frequently asked about why we
  chose to use Scala as our primary development language.
author: mark_pierotti
---

As part of the Naytev engineering team, I’m frequently asked about why we chose to use [Scala](http://www.scala-lang.org/) as our primary development language.  This question is a blast to answer because I get to talk about its fantastic [concurrency API](http://www.scala-lang.org/api/current/index.html#scala.concurrent.package) and the ease with which you can pump the most raw horsepower out of your servers.  The real star of the show is Scala’s Future[T] data type (and the libraries which help you create instances of it). 

## Addressing A Common Problem

To get a better sense of why this really matters, consider a situation in which you must expose a REST endpoint that is responsible for calling out to four 3rd party API’s, aggregating the results, and returning a combined value to your client.

A naive algorithm would call the first API, wait for a response, call the 2nd, wait for a response, and continue until finished with all 4 requests.  This means that the total time your endpoint will take to return a value is 4\*n, where n is the average amount of time it takes your server to get a response from a 3rd party API.

In pseudo code, this would look something like:

{% highlight scala %}

val r1 = callService1()
val r2 = callService2()
val r3 = callService3()
val r4 = callService4()
val finalResult = someOperation(r1, r2, r3, r4)

{% endhighlight %}

If we assume n to be about 200ms, this function’s duration comes out to a whopping 800ms.

We can do better than this.

## The Power of the Future[T]

Enter the Future type.  A future is a wrapper for a value that will be available at some indefinite point in the future.

For example, a Future[Int] would represent a wrapper that will at some point hold an Int, but that you don’t have access to just yet.

{% highlight scala %}

val futureInt:Future\[Int\] = asyncIntService()

{% endhighlight %}

You might be thinking “What good is a placeholder instead of the actual value?”  The great thing about futures is that they allow you to preemptively transform the value the Future will eventually hold before that value actually exists!

This means that you don’t have to wait for callIntService() to finish calling the external service before you can start working with the returned value, meaning your thread can exit the function call almost immediately.

For example, if you wanted to return a Future that would at some point contain the result of a 3rd party API call plus some arbitrary number “x”, you could do something like this:

{% highlight scala %}

def addToAPIResult(x:Int):Future[Int] = {
  val futureInt:Future[Int] = asyncIntService()
  futureInt.map(_ + x)
}

{% endhighlight %}

A call to this method will finish almost instantaneously because it’s not actually adding an Int to the result of the service call, it is simply promising that that addition will happen at some point before the Future is actually unwrapped.

The map function is the key to working with Futures. Any function that you pass into map() will transform your Future so that the value of that Future will instead be the result of function you passed into map applied to the what the previous value of the Future would have been.

Back to our REST dilemma

In the ideal case, our REST endpoint would be able to call each of the 3rd party services at the same time, returning a result as soon as all of the four parallel calls have finished.

To do this, we first need to use a library that allows us to create Futures representing the values of 3rd party service calls (eg. [Play WS](https://www.playframework.com/documentation/2.2.x/api/scala/index.html#play.api.libs.ws.package). Second, in the same way that we were able to work with the result of a single Future before having it, we need a way to work with the results of multiple futures before any of them individually complete. We can do this by composing Futures together.

Scala gives you several ways to compose futures together. If you know exactly how many Futures you’re going to work with, Scala’s For-comprehension is a natural and elegant fit:

val future1 = asyncService1()
val future2 = asyncService2()
val future3 = asyncService3()
val future4 = asyncService4()

{% highlight scala %}

val resultFuture:Future = for { //For-comprehension
  r1 <- future1
   r2 <- future2
   r3 <- future3
   r4 <- future4
 } yield (someOperation(r1, r2, r3, r4))
 
 val finalResult = Await.result(resultFuture, 5.seconds)

 {% endhighlight %}
 
Success! Notice how we're able to call someOperation() across the values of multiple futures without having to worry about their timing at all. This function only takes as long as the longest individual call takes to make, handily beating our n\*4 implementation. Again, if we assume n is about 200ms, this function will take about 200ms to complete, 4x faster than the previous implementation!

The magic is that the for-comprehension synchronizes the results of all the sub-Futures for you, allowing you to continue applying transformations as if all of them had completed already.
(Edit: As noted by empirewindrush on HN, this approach only works as intended if you create your futures before using them in the for-comprehension. Otherwise you're better off using Future.sequence for true composition)

Finally, the _Await.await(...)_ call allows us to finally unwrap the value of the future by waiting for its result to pop into existence.

## Scala In Production

Futures are a powerful abstraction that let us work with the results of asynchronous calls without having to actually block a result until the last possible moment. They let us easily manage parallelism through composition, giving us the ability to make our servers work at their full multi-threaded capacity wherever possible.

For a more in-depth look, head over to the official [Scala Futures and Promises documentation](http://docs.scala-lang.org/overviews/core/futures.html).