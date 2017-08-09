# Pre-work - Tippy

Tippy is a tip calculator application for iOS.

Submitted by: Nandini Bhattacharya

Time spent:12 hours spent in total

## User Stories

The following **required** functionality is complete:

* [X] User can enter a bill amount, choose a tip percentage, and see the tip and total values.
* [X] Settings page to change the default tip percentage.

The following **optional** features are implemented:
* [X] UI animations -> Basic fade in, just as proof of concept
* [X] Remembering the bill amount across app restarts (does not reset after 10 minutes yet)
* [X] Using locale-specific currency and currency thousands separators.
* [X] Making sure the keyboard is always visible and the bill amount is always the first responder. This way the user doesn't have to tap anywhere to use this app. Just launch the app and start typing.


The following **additional** features are implemented:

- [X] Clear Button
- [X] Added UIPickerView Control
- [X] Dark and Light Theme Handling 

## Video Walkthrough 

Here's a walkthrough of implemented user stories:

<img src='http://i.imgur.com/link/to/your/gif/file.gif' title='Video Walkthrough' width='' alt='Video Walkthrough' />

GIF created with [LiceCap](http://www.cockos.com/licecap/).

## Project Analysis

As part of your pre-work submission, please reflect on the app and answer the following questions below:

**Question 1**: "What are your reactions to the iOS app development platform so far? How would you describe outlets and actions to another developer? Bonus: any idea how they are being implemented under the hood? (It might give you some ideas if you right-click on the Storyboard and click Open As->Source Code")

**Answer:** For someone who has never used the Swift or iOS platform, this was a fairly easy platform to ramp up on with reasonable documentation and great tutorials. 
To me outlets are a way to reference the View UI objects from the Controller. Basically the allow the plumbing of the view objects properties so that the controller can either react to changes of the proerties or manipulate the view object properties. Actions are effectively events that are generated in response to a user interaction with the UI objects. 

Within the main.storyboard xml, the TipViewController is associated via an ID with the view as a target for the view. Within the UI object markup code eg the segmentSelector, the controller object is set as the destination for the event, so that when the event is generated, it is routed to the right method within the Controller. 

Question 2: "Swift uses [Automatic Reference Counting](https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/AutomaticReferenceCounting.html#//apple_ref/doc/uid/TP40014097-CH20-ID49) (ARC), which is not a garbage collector, to manage memory. Can you explain how you can get a strong reference cycle for closures? (There's a section explaining this concept in the link, how would you summarize as simply as possible?)"

**Answer:** [Enter your answer here in a paragraph or two].


## License

    Copyright [yyyy] [name of copyright owner]

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.