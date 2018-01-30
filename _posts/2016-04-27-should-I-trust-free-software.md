---
title: Reasons to be Wary of Free Social Plugins
date: 2016-04-27 00:00:00 -07:00
layout: post
subtitle: When free is too good to be true
cover_image: posts/free-software/splash.png
excerpt: "$0 and a javascript snippet later and you've got your shiny new share buttons
  installed. What does it really cost?"
author: zack_liscio
---

There are a host of free plugins available for adding social share buttons to a website, and it can be hard to sort through which ones are safe to use. Indeed, these buttons are one of the most ubiquitous UI elements on the internet. A handful of companies power most of them, millions of websites around the world, without charging for their software. Here are a few reasons that deal probably isn't as good as it seems.

* **1 - Conflicts of Interest**

{% include _image.html src="/images/posts/free-software/venn.png" %} 

Supporting software costs money. Servers, developers, and all the other costs of running a business add up, and if the business isn't charging you directly, they've probably found a more lucrative way to monetize the relationship. When it comes to share buttons, there's a good chance you're the product. 

The top social share plugins, AddThis and ShareThis, make money by collecting data on users that visit your site. This is valuable information, but it won't be shared with you as the site owner. Additionally, it's often used for somewhat nefarious purposes, as Vice details in [this article about how Porn sites track you, even in Incognito mode](http://motherboard.vice.com/read/your-porn-is-watching-you).

When you aren't paying for the product, the software maker doesn't necessarily have your best interests in mind. At best, this means they're building a business on top of your data. At worst, the relationship may be parasitic or violate your users privacy, all for a few free share buttons.  

* **2 - Website Performance**

{% include _image.html src="/images/posts/free-software/speed.jpg" %}

Making money through alternative means like advertising also comes with big performance implications. For example, in a [recent review of 10 different share button providers](https://www.xfive.co/blog/social-media-buttons-test-performance-privacy-features/), the worst performer, [ShareThis](http://www.sharethis.com), made 36 external requests and loaded 469kb of data. According to the author, ShareThis alone took over 6 seconds to load. In case you're curious, here are the details on [all the behind the scenes activity](http://www.webpagetest.org/result/150612_S8_PHW/3/details/) from this "free" resource. Outside the necessary requests for loading the buttons themselves, most of the calls are to a host of ad trackers which follow you around the internet.  

* **3 - Product Support**

{% include _image.html src="/images/posts/free-software/support.jpg" %}

Free software sometimes has unseen costs in the form of support. Unlike software you're paying to use, free social share buttons do not typically guarantee the same level of support that Enterprise software does. While this isn't as big of a deal for smaller blogs, major websites and publishers require quick responses and fixes. Unexpected bug fixes without support can be costly in both developer time and poor user experience.  

So, if you're debating installing free social share buttons, consider whether the quick and easy solution is worth the costs. You might be better off hand-rolling your share buttons, using [an open-source solution like Social Minus Spying](http://ncase.me/SocialMinusSpying/), or paying for software that has clear terms of use and your best interests in mind.