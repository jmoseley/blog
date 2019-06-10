---
title: "Flutter for Backend Engineers"
date: 2019-06-09T20:34:44-07:00
draft: false
---

I've recently been building an app using Flutter, and the experience has been really awesome. This is my first real foray into building a mobile app, and the Flutter SDK has done a great job of shrinking the learning curve.

<!--more-->

In my day-to-day work the majority of my development time is spent on "the backend", architecting and building distributed systems. This is one of my passions, and I have enjoyed this type of work since the first time I drew a box diagram and had to decide which part of the system would be the source of truth. Along the way I have worked on the front end as needed, and have dabbled with React and my fair share of HTML, CSS, JQuery and other front end technologies. However, I've never really done front-end work as part of my job, and my perspective for this blog post is that of someone with pretty limited front-end experience.

## What is Flutter? How is it different than React Native?

Flutter is a cross-platform SDK for building mobile (and now [web](https://flutter.dev/web)) apps in a platform agnostic way. I have no experience with React Native, so it is hard for me to compare. The biggest difference between the two is that Flutter has a native rendering engine that is built from the ground up, whereas React Native is still built on top of a webview. This allows Flutter to have better performance all around because it is not rendering in a web browser, does not need to shuttle things back and forth across the JS bridge, and your application code can be compiled to native code, because most things are written in Dart.

## What is this Dart thing?

Flutter apps are written in Dart, a compiled language that is easy to pick up. Dart (and Flutter) was developed at Google, and provides a great experience for developing apps. Dart can be executed both as AOT compiled and JIT compiled, trading off performance for dynamic execution depending on the circumstances. It uses an async/await pattern for concurrency, similar to modern Javascript, making it easy to handle concurrency without worrying about threads or workers or channels.

On top of that, Darts JIT support allows for stateful hot-reloading when developing Flutter apps, allowing your app to update in sub-second time without destroying state, keeping those iteration cycles really tight.

## Getting Started was super easy (even on ChromeOS)

Getting started with Flutter is pretty straightforward, and [documentation](https://flutter.dev/docs/get-started/install) is really great. I'm working on a Pixelbook, running Chrome OS, so things worked a tad different than the docs, but I used [Linux](https://flutter.dev/docs/get-started/install/linux) support to install the SDK and was up and running quickly. Once the SDK is installed you can use `flutter doctor` to help find and rectify any missing dependencies.

## The Ecosystem

One thing that has been super helpful to me is the plugin ecosystem that has been built up so far. As someone lacking severely in experience and ability designing/implementing front-end interfaces, the plug-and-play usability of the Material Design package is really great. There are examples, best practices, and customizable components for most UI interactions. However, if you want more flexibility in the design, or don't want to stick to Material Design, the platform supports full customizability of the components so you can build what you need.

On top of the Material Design and user interaction libraries, there are many first- and third-party plugins both for Dart and Flutter specifically, and the [library](https://pub.dev/) is growing all the time.

However, if your app requires something very platform/hardware specific, I'd double check for library support, or you may have to write your own.

## State Management

There are a few places where the seams are still showing, and best practices for application design is one of them. At the moment, there is still not a consensus within the community as to the best patterns to follow for how to design your application, manage state, and interact with APIs.

In a more mature ecosystem (I have some experience with React) it seems there is some consensus on these big questions, and there is lots of evidence backing up certain patterns.

In the Flutter ecosystem this consensus has yet to emerge, with several patterns competing. So far I've come across the [BLoC](https://www.freecodecamp.org/news/how-to-handle-state-in-flutter-using-the-bloc-pattern-8ed2f1e49a13/) pattern, native widget `setState` (similar to managing component state in React) and [Scoped Model](https://github.com/brianegan/scoped_model). There are probably many others, but there are the few that I am reasonably familiar with.

### BLoC Pattern

The BLoC pattern is built on the concept of business logic widgets and UI widgets, connected via Streams. I have not implemented anything with this pattern yet, so it would probably be best to find some other post to get a nitty gritty idea of how to implement it. At a high level it allows your UI to be decoupled from your business logic, while still being able to control with granularity which parts of the app re-render when state changes, keeping the app performance high and the app easy to understand and maintain.

### Widget `setState`

This pattern is basically the same as using component state management within React. Each widget can hold internal state, and user interactions with these widgets (or their children) can trigger calls to the `setState` function. When the state changes, the widget will be re-rendered. This pattern is very simple, and works great for simple app, but the logic can quickly explode into a big ball of spaghetti when the app gets more complicated.

### Scoped Model

The [Scoped Model](https://github.com/brianegan/scoped_model) pattern allows you to bind a widget to a `ScopedModel` component, and this model will re-render its children on depend (by calling `this.notifyListeners()`). My current project uses this pattern, and it has scaped well so far, but as the complexity of the application increases, you need to make smart decisions about how to draw the lines for what constitutes model A vs model B to ensure that your app is not re-rendering entirely every time any part of the app state changes.

## Summary

I am very happy with Flutter so far. I find building apps and UI to be intimidating and painful, and Flutter has rounded off all the edges, making it easy for someone with my skills to pick it up and run with it. I dislike the lack of consensus around how to architect reasonably complex apps, but the community is very active, and I don't doubt that 1 or 2 front runners will emerge soon.
