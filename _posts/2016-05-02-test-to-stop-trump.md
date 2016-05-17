---
layout: post
title: 'How to #stopTrump with A/B Testing'
subtitle: 'Testing in the Facebook News Feed on Behalf of Democracy'
cover_image: posts/stop-trump/machine.jpg
excerpt: "Using all the tech at our disposal to fight the Voledmort of our times."
author: zack_liscio
og_image: posts/stop-trump/trumpog.png
---

With the seeming inevitability of Trump winning the Republican nomination, his campaign (and hopefully not the future of humanity) seems to hinge upon two states: Indiana and California. Writing in the New York Times, Nate Cohn says the two states are ["crucial prizes that would put Mr. Trump over the top"](http://www.nytimes.com/2016/04/27/upshot/why-donald-trump-is-probably-two-states-from-victory.html). We decided to try a small experiment to see how we could use Facebook's rich targeting data and powerful distribution to tip the scales in these races. To explore the concept, we tested different versions of Trump-related messaging to find the optimal way to capture attention among the voters he needs to win. 

In order to theoretically stop Trump, we would need to convince those who would vote for him that he shouldn't be President. First, we need to figure out how to capture their attention. This post explores how to use A/B testing on Facebook to find the ideal messaging (positive vs. negative) to maximize engagement among the population likely to vote for Trump. 

We recognize that while this test is an interesting exploration of which messaging captures voter attention (acquisition), this test doesn't focus on which messaging could change voters' minds (conversion). That said, competing for visibility in the Facebook News Feed is an essential part of communications and reaching voters is a prerequisite for influencing their behavior.

It's worth mentioning that we're not a political advertising agency, strategy firm, or in any way related to the race beyond watching as fascinated observers.

To get our test started, we set a few constraints for ourselves:

* **Timeframe:** with only a few days before the Indiana Primary, we set the test messages to run over the course of 24 hours
* **Budget:** we limited the test budget to $200, and allowed ourselves to use our own <a href='https://www.naytev.com' target="_blank">testing software</a> for free. It would also be possible to run this exact test directly through Facebook's Power Editor, but doing so would take hours longer. Each variation on the message is created as a Facebook Unpublished Page Post ([aka Dark Posts]({% post_url 2015-09-20-what-and-why-is-dark-post-testing %})) and compared in terms of post engagement.

Here's how we did it:

* **1. Create Facebook Audiences**

Among the most important questions in this kind of test is who to target. Luckily, The Atlantic wrote an [article about the demographics of Donald Trump supporters](http://www.theatlantic.com/politics/archive/2016/03/who-are-donald-trumps-supporters-really/471714/). The article points out that the "single best predictor of Trump support in the GOP primary is the absence of a college degree." The New York Times [corroborated this finding](http://www.nytimes.com/2016/03/13/upshot/the-geography-of-trumpism.html), so we focused on voting age adults (18+) without a college degree as our target audience in Indiana and California.

We created our target audiences for each state directly in Facebook's Power Editor: Audiences >> Create Audience >> Saved Audience so that we could target by any data Facebook has available.

{% include _image.html src="/images/posts/stop-trump/californiaresidents.png" %}

Because the absence of a college degree was such a strong predictor of support for Donald Trump, we excluded anyone with a degree from our test.

{% include _image.html src="/images/posts/stop-trump/education.png" %}

Our final audiences have 1.7 million people in Indiana and 12 million people in California.

{% include _image.html src="/images/posts/stop-trump/audiences.png" %}
*Facebook Audience of Adults Without College Degrees*  

* **2. Design Test Messaging**

We want to understand which style of messaging best engages voters who fall within the core base of Trump voters. Let's test different messages and thumbnail images, varying positive vs. neutral vs. negative sentiments. We didn't include descriptions, as they're not frequently seen anyway. We also included the relevant state name for each message.

**Post Text:**

- We kept the post text, which is the messaging that appears above the image in a Facebook post, constant and neutral for all message variants: "The [Indiana, California] Republican Primary is coming up soon"

**Headlines:**

- Positive: "Why you should vote Trump if you live in [Indiana, California]"
- Neutral: "Should you vote for Donald Trump if you live in [Indiana, California]?"
- Negative: "Trump Would be a Disaster for [Indiana, California]"

**Images:**

- Positive: We used Trump's own official image from his campaign website
- Negative: We used a picture with Trump making a silly face
- Neutral: We didn't include a "neutral" image as we couldn't find a Trump shot that our team could agree was neutral.

**Call To Action:**
We arranged for all test messages to direct post clicks to [ISideWith.com](https://www.isidewith.com/), a non-partisan website that helps voters understand which candidate aligns with their views. It would be incredibly interesting to see how we can influence conversion for a specific call to action using different presentations of content in the News Feed, but we'll save that for another day.

* **3. Run Dark Tests**

We loaded all of our versions of the headlines and images into Naytev, generated every available combination (2 images x 3 headlines = 6 messages per test), and paired each state's messaging with its respective audience. Pairing messages created some mixed sentiment posts (e.g. silly Trump image + pro Trump headline), which we were curious to evaluate too. We applied a $100 ad spend for both the California and Indiana test messages, for a total spend of $200.

{% include _image.html src="/images/posts/stop-trump/california.png" %}
*Preview of California Test Messages: Positive, Negative, Neutral, and Mixed*

* **4. Analyze Results**

Here are the finished results:

{% include _image.html src="/images/posts/stop-trump/californiaresults.png" %}
*California Results: Slightly Pro-Trump Message Engages Most*

{% include _image.html src="/images/posts/stop-trump/indianaresults.png" %}
*Indiana Results: Similar Messaging Ranking, but Weaker Discourse than California*

What did we learn? Here are our main takeaways:

- There is no single "all-purpose best" messaging, and the optimal combination of messaging depends on your goal. For instance, the message combinations with the highest engagement (mostly comments and re-shares) was different in both states from the message with the highest clickthrough rate (CTR) and lowest cost per click (CPC).

- The neutral headline phrased as a question drove the highest post engagement in both states. Asking whether voters should vote for Trump in their state incited an enormous volume of comments (over 200 on each of the top messages). This a great way to generate visibility through conversation, but ultimately much harder to control, as the conversations quickly degenerated into vile name calling. 

{% include _image.html src="/images/posts/stop-trump/dissonance.png" %}

- **The negative image / positive headline combination (above) generated the highest CTR and lowest CPC in both states.** We believe that the dissonance of the pairing created a strong curiosity gap without triggering readers' clickbait senses. These message combinations take a strong opinion in one direction, so it's unsurprising that they perform well. As Refinery29 points out, ["Titles with negative qualifiers have on average 135% more comments per article than other stories and 28% more shares"](http://intelligence.r29.com/post/123550777526/3-ways-to-immediately-make-your-facebook-posts). In the case of our test, the question headline seems to encouraged divisive comments which themselves yielded continued high engagement.

- **People are commenting without clicking through.** The top message in California had hundreds of comments but only 73 clicks. Additionally, the link would have directed them to a non-partisan site helping explore which candidates match the user's view, so no strong opinions there. The vast majority of people who engaged with our test were willing to add their opinion to the comment thread without feeling any obligation to read the link they were commenting on.

{% include _image.html src="/images/posts/stop-trump/results.png" %} 

So, how does this help us stop Trump? Anyone using Facebook in the past year (all 1.6bn of us) has noticed that the upcoming election is a hot topic. For better or worse, our reality is that the News Feed is increasingly the place where ideas are discovered, consumed, and debated. Those able to harness the power of digital [will win elections]({% post_url 2015-01-09-how-to-win-2016-elections-6-cutting-edge-digital-tactics %}), and testing helps us do that effectively and refine our tactics as we learn. If we hope to change minds, the first step is understanding how to reach voters on their terms and in ways that engage them. Only then do we have a chance of preventing [the Donald Drumpf](https://www.youtube.com/watch?v=DnpO_RTSNmQ).


Thanks for reading and please also [register to vote](https://www.usa.gov/register-to-vote)!