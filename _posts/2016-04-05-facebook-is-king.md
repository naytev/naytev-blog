---
title: Facebook is King, Other Networks Fight for Scraps
date: 2016-04-05 00:00:00 -07:00
categories:
- distributed-media
layout: post
subtitle: Analyzing Social Actions & Social Distribution for Media
cover_image: uploads/posts/facebook-is-king/facebook-is-king.png
excerpt: Tl;dr; Facebook still owns social, but other networks show promise. With
  all the buzz around publishers rapidly diversifying their content distribution across
  social networks, we wanted to see how the top social networks are actually performing.
author: zack_liscio
---

**Tl;dr;** Facebook still owns social, but other networks show promise

With all the buzz around publishers rapidly diversifying their content distribution across social networks, we wanted to see how the top social networks are actually performing.

We analyzed social engagement for 68,581 top articles across 7 major media companies. Like most modern publications, each company derives a huge portion of their traffic from social media. 

We found that Facebook alone drove 92% of the total social actions, confirming the <a href='http://blog.naytev.com/hard-simple-truth/' target="_blank">trend we’ve noted before</a> that Facebook dominates the social playing field. 

However, there’s more to the story: the overall distribution varies markedly among publishers, illustrating the unique approach each is taking to engage audiences beyond Facebook. 

{% include _image.html src="/uploads/posts/facebook-is-king/median-shares-linear.png" %}

The contrast between Facebook and the rest of the networks is so stark that we had to show the breakdown logarithmically (below: each tick mark on the y-axis is 10x greater than the previous step). When viewed with a linear y-axis, all other sharing is nearly invisible. 

{% include _image.html src="/uploads/posts/facebook-is-king/median-shares-logarithmic.png" %}

That said, networks beyond Facebook have great potential for growth. While publishers are not engaging audiences on other platform at the same scale as on Facebook, diversifying shows promise.

There are many opportunities to capture untapped audiences in traditionally lower performing platforms, as well as viral growth potential on new networks. Snapchat’s Discover platform, for example, promises exciting engagement with valuable millennial audiences. Early publisher partners cite huge growth on Snapchat, but as with many previous “hot” platforms, growth can rapidly cool down as other publishers arrive on the scene.

What’s interesting is that while Facebook is currently the most important network for everyone, the effectiveness of the other networks varies significantly from publisher to publisher. This leads to each publisher having a unique **Content Distribution Fingerprint**, with the networks that resonate for that particular media company differing based upon their brand and content. 

For example, let’s compare National Geographic and TipHero. While both get the overwhelming majority of their respective social actions from Facebook, National Geographic sees more activity on G+ than any other second tier network, while TipHero has effectively zero. Conversely, Pinterest and LinkedIn are strong relatively strong performers for TipHero and underperform for National Geographic. 

{% include _image.html src="/uploads/posts/facebook-is-king/content-distribution-fingerprint.png" %}

This is surprising given the quality of National Geographic’s excellent photo quality and the tendency for image-heavy content to overperform on Pinterest. It’s even more surprising when looking at the total number of followers each of the publications has on Pinterest. National Geographic has 5.5x the number of Pinterest followers (884,700 vs 160,700), but gets less than 5% the engagement per fan that TipHero does. 

It seems a foregone conclusion that a modern media company cannot exist in isolation within the bounds of its website. The publications who are thriving are allowing their readers to discover and even consume content in the places they already spend time: social media. 

{% include _image.html src="/uploads/posts/facebook-is-king/publisher-comparison.png" %}

While Facebook will continue to dominate social in the near future, publishers are wary of becoming overly dependent on a single network for the existence of their content. Facebook may still be king, but it’s clear publishers are continuing to experiment with distribution beyond Facebook and their websites, and their varying successes and failures reveal the first glimpse of how this fragmented distribution paradigm will change the face of media.

## Methodology: 

* **Publishers:** The 7 unique media brands from <a href="http://blog.shareablee.com/top-10-media-publishers-for-february-2016-buzzfeed-a-star-on-twitter" target="_blank">Shareablee’s Top 10 media Publishers for February 2016</a>.
* **Social Action Counts:** BuzzSumo report for the top 10,000 articles from each publisher ranked by total social actions
* **Fan and Follower Counts:** Manually looked up each media company’s corresponding page on each social platform. Note: in the event of multiple pages (like BuzzFeed, which has a page per topic), we used data from the flagship page.
