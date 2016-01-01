# Pre-work - Tooltip

**Tooltip** is a tip calculator application for iOS.

Submitted by: **R. Alex Clark**

Time spent: **10** hours spent in total

## User Stories

The following **required** functionality is complete:

* [x] User can enter a bill amount, choose a tip percentage, and see the tip and total values.
* [x] Settings page to change the default tip percentage.

The following **optional** features are implemented:
* [ ] UI animations
* [ ] Remembering the bill amount across app restarts (if <10mins)
* [x] Using locale-specific currency and currency thousands separators.
* [ ] Making sure the keyboard is always visible and the bill amount is always the first responder. This way the user doesn't have to tap anywhere to use this app. Just launch the app and start typing.

The following **additional** features are implemented:

- [x] List anything else that you can get done to improve the app functionality!

Setup slider for easy adjustment of the tip percentage based on bounds of chosen slider settings. These can be set / reset in the settings menu.

## Video Walkthrough 

Here's a walkthrough of implemented user stories:

###Basic Use:
![Basic Usage of App](https://cloud.githubusercontent.com/assets/6467543/12069473/b7044980-aff7-11e5-8a60-f58834ac9bc3.gif)

The app is selected from the home screen and from here a tip amount is selected. This tip amount defaults to the median of the selected bounds of the application's sliders settings. These settings can be changed in the settings screen.

After a bill amount has been entered into the input field, the tip and total amounts will update to match it. The tip percentage can be altered based on the slider, and the tip and total costs will live update to match the amount of tip given based on the bill.

###Setup Slider Bounds:
![Custom Settings](https://cloud.githubusercontent.com/assets/6467543/12069475/bb39064e-aff7-11e5-877c-f20dabe7fe6a.gif)

You can set custom bounds for the tip slider, allowing you to easily change the window of selection for the slider. This is done using the settings screen.

###Save / Reset Settings:
![Save and Reset](https://cloud.githubusercontent.com/assets/6467543/12069477/bef583d4-aff7-11e5-86be-c13e9de8d453.gif)

Finally, the settings are saved using the save button, and custom settings can easily be reset using the reset button featured in the settings screen.

GIF created with [LiceCap](http://www.cockos.com/licecap/).

## Notes

Describe any challenges encountered while building the app.
* * *
This was my first ever project using the iOS Swift language and Xcode so it was definitely a learning experience for me to be able to complete this project. I did not get as many of the optional settings done as I would have liked but the application works fine and I think that it is a pretty good first time attempt.   
Most of the problems I encountered involved lack of user experience - I spent a lot of time watching tutorials in order to be able to complete the requirements to how I would like - and trying to understand the outlet and actions of the application. It was very fun to have it all come together in the end when I started learning the ins and outs of the language and IDE, but it was a by the book process at first since I had to watch exactly what the given tutorials were teaching.

## License

    Copyright [2015] [R. Alex Clark]

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
