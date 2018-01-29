---
title: What We Learned Setting Up Facebook Instant Articles
date: 2016-05-17 00:00:00 -07:00
layout: post
subtitle: Enabling Instant Articles for your blog? Read this first.
cover_image: posts/instant-articles-2/cover.jpg
excerpt: Now that Facebook Instant Articles are available for all publishers, it’s
  clear the new format is going to be a major part of most publications and brands’
  content distribution strategy. Luckily, the setup is fairly straightforward.
author: zack_liscio
---

Now that Facebook Instant Articles [are available for all publishers](https://media.fb.com/2016/04/12/instant-articles-now-open/), it’s clear the new format is going to be a major part of most publications’ and brands’ content distribution strategy. Luckily, the setup is fairly straightforward.

Here’s what we learned setting up [Facebook Instant Articles](https://instantarticles.fb.com/) for our company blog.

## Instant Articles Use HTML5 (until they don’t)

As detailed in their [Format Reference](https://developers.facebook.com/docs/instant-articles/reference), Facebook has chosen HTML5 as the format for Instant Articles. This makes it very easy to get up and running with Instant Articles without a huge technology investment.

However, there are some major headaches with Facebook’s formatting, as their HTML5 requirements don’t fully align with W3 HTML5 specs. 

For example, Facebook requires Ordered Lists to only include a single text element, while W3 only requires [Flow Content](https://www.w3.org/TR/2011/WD-html5-20110525/content-models.html#flow-content-0) which permits multiple items. With Instant Articles, this results in an error which prevents the article from being published automatically:

{% include _image.html src="/images/posts/instant-articles-2/list-error.png" %}

This can be frustrating, as it requires restructuring your content to fit Facebook’s proprietary requirements rather than the HTML5 standard their instructions suggest.

## You can publish content via RSS or API

Since our blog is a static site hosted on S3, we chose to implement Instant Articles using the RSS feed approach. For larger deployments, the API is probably a better choice. 

For static sites, the workflow is basically to create a page with an XML document detailing all of your articles. Here’s a link to the [Naytev Blog XML feed](http://blog.naytev.com/instant-feed.xml) as Facebook’s scraper sees it. It looks like this:

{% include _image.html src="/images/posts/instant-articles-2/feed.png" %}

## The Instant Articles System is Fast and Rapidly Improving

Instant Articles update very quickly when you publish a change to an existing article. The scraper automatically updates several times per hour. You can also refresh manually by going into the Page settings and clicking the refresh icon for either Production or Development feeds. The only caveat is that the op-modified metatag for a given piece of content must change in order for updates to take effect. This is the timestamp that lets Facebook know that the article has changed and that Facebook should re-ingest it, a process that takes only a few moments.

## Articles Can Be Auto-published (as long as there are no errors)

Publishers can choose to Auto-Publish Instant Articles as they appear in Facebook’s feed or manually approve each one. If there formatting are errors in an article, it will remain in an Unpublished draft state until the errors have been corrected.

{% include _image.html src="/images/posts/instant-articles-2/animated.gif" %}

## Instant Articles Are Surprisingly Easy to Monetize

Turning on [Facebook’s Audience Network](http://www.businessinsider.com/what-is-facebook-audience-network-and-why-does-it-matter-2016-2) is an easy way to monetize your content using Facebook’s wealth of targeting data. This will allow Facebook to serve ads on your Instant Articles, and it only takes a few clicks to set up.

Inside your Page settings, visit:

``` Publishing Tools > Instant Articles > Configuration > Tools > Audience Network ```

You can then create an ad placement and Facebook will even automatically figure out where to position the placement within your content. This significantly lowers the bar for publishing and monetizing content directly on Facebook.

Overall, Instant Article setup is extremely easy, taking about a half day of CMS updates and content tweaks. Keep in mind that every blog setup will be different, but the RSS feed approach is a simple way to get started with Instant Articles in an afternoon.

In the coming weeks, we’ll continue exploring Instant Articles along with other ways media is evolving and [becoming more distributed]({% post_url 2016-04-08-publishers-must-adapt %}).