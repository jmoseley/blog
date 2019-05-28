---
title: 'Full Time Development on Chrome OS'
date: 2019-04-06T16:25:00Z
root: '/blog'
---

I have recently purchased a Google Pixelbook to help satisfy my curiosity about the feasibility of a non-OSX platform for development. I plan to use the Pixelbook as my daily driver, and I'm writing a series of blog posts about the experience.

<!--more-->

For the last 5 years, since I graduated from university, I have used a Macbook Pro as my main device for doing development. This started during my last co-op (aka internship) in San Francisco, where I used a Macbook for the first time, and I soon bought my own for working on personal projects. At Convoy, my current job, we also use Macbook Pros, so it has been very comfortable to use the same operating system both at home and at work. I have a windows desktop, but that is used only for the small amount of gaming that I do and nothing else.

I gifted my Macbook Pro to my wife so she can use it for photography and her [blog](https://www.panaceats.com), so it seemed like a good opportunity to try something new. The Google Store has a convenient 15 day return policy, so if it really does not do the job, I have two weeks to figure that out. Today is the end of the first week, and I figured it was high time to share my initial thoughts.

## Isn't Chrome OS just a fancy browser?

Short answer? Kinda, but not really. Here's a story: My first experience with Chrome OS was in 2015, when I bought the first Google Pixel. At the time I had still not given in entirely to OSX side, and wanted to try something else before I bought myself a Macbook. The Pixel was great. Amazing build quality, nice keyboard, and Chrome OS did all the things I needed a non-dev laptop to do. However, this was during the birth of Docker, and I mistakenly assumed that was a necessity for me to be successful building personal projects. After hitting that wall I gave up and returned the Pixel, and ended up forking out nearly double the price for a Macbook Pro.

So here we are, 4 years later. What has changed? 3 words.

Native Linux Apps.

As of late 2018, Chrome OS natively supports Linux applications. You need to flip a switch in settings (including an infamously Google-like Beta tag), wait a few minutes, and then you have access to a terminal that includes a bunch of native Linux tools, including `apt-get`. You can also use `dpkg` to install `.deb` files, and most developer tools that run on OSX also have Linux builds.

This means it is trivial to run things like Python, VSCode, and `node`. So that resolves the majority of the issues that are faced by most modern developers, and, since it is a native Linux kernel, its reasonably easy to install other build platforms for compiled languages like C or C++ or Java as well.

That said, there are a few quirks that still need some work. Most Linux apps capture the `alt+<key>` commands by default, preventing the use of many of the handy keyboard shortcuts for navigating between applications like `alt+tab` and `alt+{num}`. It also removes the functionality of the `alt+[` shortcuts for moving windows around. There are workarounds for these things but I have had limited success getting them to work.

Related to navigating between applications quickly, I am a huge fan of full screen apps in OSX, and use the three finger swipe to quickly move around. On Chrome OS the three finger swipe is used to navigate between browser tabs, and so far I have not discovered a way to change this setting. This is a minor inconvenience but I am sure I will get over it.

## Hardware

Like the original Pixel, the build quality on the Pixelbook is impeccable. I have mixed feelings so far as to whether the battery lives up to the advertised performance, but for now it is usable. I love the keyboard, the keys are very nice to press and have the right amount of whatever it is that makes keyboards nice.

The touchpad leaves a bit to be desired. It works well, but I am so far not a huge fan of the click action. It requires a bit more force than my Macbook and has a noticeably louder click. I have moved to using a tap instead of clicking when I need to mouse press.

## Conclusion

I was on the fence when I first started playing with it, but now I am leaning strongly towards keeping the Pixelbook. I have had success building some personal projects (this blog being one of them), and will be happy with the Pixelbook, once I get other how it is different (but not worse) than OSX that I have been using for 5 years.
