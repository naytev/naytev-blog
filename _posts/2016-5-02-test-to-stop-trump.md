---
layout: post
title: 'How to #stopTrump with A/B Testing'
subtitle: 'Testing in the Facebook News Feed on Behalf of Democracy'
cover_image: posts/stop-trump/machine.jpg
excerpt: "Using all the tech at our disposal to fight the Voledmort of our times."
author: zack_liscio
og_image: posts/stop-trump/trumpog.png
---

With the seeming inevitability of Trump winning the Republican nomination, his campaign (and hopefully not the future of humanity) seems to hinge upon two states: Indiana and California. Writing in the New York Times, Nate Cohn says the two states ["crucial prizes that would put Mr. Trump over the top"](http://www.nytimes.com/2016/04/27/upshot/why-donald-trump-is-probably-two-states-from-victory.html). We decided to try a small experiment to see how we could use Facebook's rich targeting data and powerful distribution to tip the scales in these races. To explore the concept, we tested different versions of Trump-related messaging to find the optimal way to capture attention among the voters he needs to win. 

In order to theoretically stop Trump, we would need to convince those who would vote for him that he shouldn't be President. First, we need to figure out how to capture their attention. This post explores how to use A/B testing on Facebook to find the ideal messaging (positive vs. negative) to maximize engagement among the population likely to vote for him. 

We recognize that while this test is an interesting exploration of which messages are best at capturing attention (acquisition), that's not a substitute for changing minds (conversion). That said, competing for visibility in the Facebook News Feed is an essential part of communications and reaching this target audience is a prerequisite for influencing their behavior.

It's worth mentioning that we not a political advertising agency, strategy firm, or in any way related to the race beyond watching with fascination.

To get our test started, we set a few constraints for ourselves:

* **Timeframe:** with only a few days before the Indiana Primary, we set the ads to run over the course of 24 hours
* **Budget:** we limited budget to $200, and allowed ourselves to use our own <a href='https://www.naytev.com' target="_blank">testing software</a> for free. It would also be possible to run this exact test directly through Facebook's Power Editor, just more time-consuming. Each variation on the message is created as a Facebook Unpublished Page Post and compared in terms of engagement.

Here's how we did it:

* **1. Create Facebook Audiences**
  Among the most important questions in this kind of test is who to target. Luckily, The Atlantic wrote an article about the demographics of Donald Trump supporters](http://www.theatlantic.com/politics/archive/2016/03/who-are-donald-trumps-supporters-really/471714/). The articles points out that the "single best predictor of Trump support in the GOP primary is the absence of a college degree." The New York Times [corroborated this finding](http://www.nytimes.com/2016/03/13/upshot/the-geography-of-trumpism.html), so we used it as our targeting criteria to design two Facebook Audiences, one for Indiana and one for California, where we're interested in changing hearts and minds.

  We created these audiences directly in Facebook's Power Editor: Audiences >> Create Audience >> Saved Audience so that we could target by any data Facebook has available. For good measure, we also included people with an interest in "Donald Trump".

<div class="full zoomable"><img src="/images/posts/stop-trump/californiaresidents.png"></div>

  Because the absence of a college degree was such a strong predictor, we excluded anyone with one from our test.

<div class="full zoomable"><img src="/images/posts/stop-trump/education.png"></div>

  Our final audiences have 1.7M people in Indiana and 12M people in California.

<div class="full zoomable"><img src="/images/posts/stop-trump/audiences.png"></div>  

* **2. Design Test Messaging**

  We want to convince voters that Trump is the wrong choice for their state. Let's test a handful of different messages and thumbnail images, varying positive vs. neutral vs. negative sentiments. As they're not frequently seen anyway, we didn't include descriptions. We also included the relevant state name for each.

  ##### Post Message:
  - We kept the post message constant across all variants: The [Indiana, California] Republican Primary is coming up soon

  ##### Headlines:
  - Positive: Why you should vote Trump if you live in [Indiana, California]
  - Neutral: Should you vote for Donald Trump if you live in [Indiana, California]?
  - Negative: Trump Would be a Disaster for [Indiana, California]

  ##### Images:
  - Positive: We used Trump's own official image from his campaign website
  - Negative: We used a picture with Trump making a silly face
  - Neutral: We didn't include a "neutral" image as we couldn't find a Trump shot that our team could agree was neutral.

  ###### Call To Action:
  For all of our message variants, we sent the clicks from the ads to [ISideWith.com](https://www.isidewith.com/), a non-partisan site that helps voters understand which candidate aligns with their views. It would be incredibly interesting to see how we can influence conversion for a specific call to action using different presentations of content in the News Feed, but we'll save that for another day.

* **3. Run Dark Tests**

  We loaded all of our versions of the headlines and images into Naytev and generated every available combination (2 images x 3 headlines = 6 messages per test), and paired each state's messaging with its' audience. The tests each received $100 in Facebook Ad Spend to test their messages.

<div class="full zoomable"><img src="/images/posts/stop-trump/california.png"></div>

* **4. Analyze Results**

  Here are the finished results of the test for California:

<div class="full zoomable"><img src="/images/posts/stop-trump/californiaresults.png"></div>

  and Indiana: 

<div class="full zoomable"><img src="/images/posts/stop-trump/indianaresults.png"></div>

  What did we learn? Here are our main takeaways:

  - There is no single "all-purpose best" messaging, and the optimal combination of messaging depends on your goal. For instance, the message combinations with the highest engagement (mostly comments and re-shares) was different in both states from the message with the highest clickthrough rate (CTR) and loweest cost per click (CPC).

  - The neutral headline phrased as a question drove the highest post engagement in both states. Asking whether voters should vote for Trump in their state incited an enormous volume of comments (over 200 on each of the top messages). This a great way to generate visibility through conversation, but ultimately much harder to control, as the conversations quickly degenerated into vile namecalling. 

<div class="full zoomable"><img src="/images/posts/stop-trump/dissonance.png"></div>

  - The negative image / positive headline combination (above) generated the highest clickthrough and lowest cost per click in both states. We believe that the dissonance of the pairing created a strong curiosity gap without triggering readers' clickbait senses. These message combinations take a strong opinion in one direction, so it's unsurprising that they perform well. As Refinery29 point out, ["Titles with negative qualifiers have on average 135% more comments per article than other stories and 28% more shares"](http://intelligence.r29.com/post/123550777526/3-ways-to-immediately-make-your-facebook-posts). In the case of our test, the question headline seems to encouraged divisive comments which themselves yielded continued high engagement.

  - People are commenting without clicking through to the article. The top message in California had hundreds of comments but only 73 clicks. Additionally, the link would have directed them to a non-partisan site helping explore which candidates match the users view, so no strong opinions there. The vast majority of people who engaged with our test were willing to add their opinion to the comment thread without feeling any obligation to read the link they were commenting on.

<div class="full zoomable"><img src="/images/posts/stop-trump/results.png"></div> 

  So, how does this help us stop Trump? Anyone using Facebook in the past year (all 1.6bn of us) have noticed that the upcoming election is a hot topic. For better or worse, our reality is that the News Feed is increasingly the place where ideas are discovered, consumed, and debated. Those able to harness the power of digital [will win elections]({% post_url 2015-1-9-how-to-win-2016-elections-6-cutting-edge-digital-tactics %}), and testing helps us do that effectively and refine our tactics as we learn. If we hope to change minds, the first step is understanding how to reach them on their terms and in ways that engage them. Only then do we have a chance of preventing the Drumpf.


Thanks for reading and please also [register to vote](https://www.usa.gov/register-to-vote)!