# Khutaa (FootSteps) 


### Background

* You will use Flutter & Firebase to build an application to track footsteps of users, and build a reward system such that the application will exchange automatically their footsteps into (Health Points) that can be used to get real world rewards (e.g., free coffee). Upon choosing any reward, the redemption function will show them a coupon that they can use when redeeming the reward in the real world.

## Achieved  Deliverables

* Users can be authenticated anonymously, no need to take a phone number or email

* The application can track the user footsteps and update them in real-time, meaning while the app is in the foreground, and the user walks around, they should be able to see the steps counter increasing.

* For each number of footsteps taken, a function must run to exchange it to “Health Points”, e.g., 100 footsteps = 1 Health Point.

* There is a history that lists all the exchanges 

* There should is a catalog of rewards so users can pick a reward they like and redeem it. 

*  There is a leaderboard page

* The App supports both iOS and Android

* Dark mode is supported

* Project is in Null safe

## Not Yet Implemented 

* Multilingual Support 
* Rewards are paid with health points
* Show a visual feedback



## Tech-stack

* Tech-stack
    * [Flutter](http://flutter.dev/) - a cross-platform, framework for building mobile applications.
    * [Dart](http://dart.dev/) - client-optimized language for fast apps on any platform.
    * [Provider](https://pub.dev/packages/provider) - A wrapper around InheritedWidget to make them easier to use and more reusable.(State management)
    * [Firebase Auth](https://pub.dev/packages/firebase_auth) - A plugin to authenticate users in the application

    * [Cloud Firestore](https://pub.dev/packages/cloud_firestore) - Flutter plugin for Cloud Firestore, a cloud-hosted, noSQL database with live synchronization and offline support on Android and iOS.

   * [Sentry](https://pub.dev/packages/sentry_flutter) - Flutter plugin for reporting app crash and monitoring app perfomance 
     
   * [Get it](https://pub.dev/packages/cloud_firestore) - Service locator plugin
    

* Architecture
    * MVVM Architecture

## Dependencies

All the dependencies (external libraries) are defined in a single place - `pubspec.yaml` file. This approach allows to easily manage dependencies and use the same dependency version across all modules.

## Screenshots iOS

The screenshot below shows the working application:


|<image src="screenshots/ios1.png"> | <image src="screenshots/ios2.png"> | <image src="screenshots/ios3.png"> | <image src="screenshots/ios4.png">| <image src="screenshots/ios5.png">|
|:---:|:---:|:---:|:---:|:---:|
||||||


## Screenshots Android

The screenshot below shows the working application:

|<image src="screenshots/auth.jpeg"> | <image src="screenshots/home2.jpeg"> | <image src="screenshots/home.jpeg"> | <image src="screenshots/leaders.jpeg">| <image src="screenshots/actions.jpeg">|
|:---:|:---:|:---:|:---:|:---:|
|Auth Page|Home Page|Home Page Dark|History|Actions|



