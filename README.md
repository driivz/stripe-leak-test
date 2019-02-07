# stripe-leak-test
An example project showing a leak in the iOS Stripe library version 14.0.0

## Steps to reproduce leak #1:
* Open project in Xcode
* Run the project on Simulator
* Tap the "Open Table" button
* Tap on the "Back" button
* See memory leak alert is shown
* Click on the "Debug Memory Graph" button
* Filter graph to show only leaks by tapping "Show only leak blocks" at the bottom
* See Stripe component leaks

## Steps to reproduce leak #2:
* Open project in Xcode
* Run the project on Simulator
* Tap the "Open Table" button
* Type demo card details:
4242424242424242
12/22
123
* Tap on the "Back" button
* See memory leak alert is shown
* Click on the "Debug Memory Graph" button
* Filter graph to show only leaks by tapping "Show only leak blocks" at the bottom
* See Stripe component leaks

See leak in UIKeyboardPredictionView

### See attached screenshots for example:

##### Fill demo credit card details:
<img src="docs/screen1.png?raw=true" title="Demo card" />

##### See memory leak alert after tapping "Back" button:
<img src="docs/screen2.png?raw=true" title="See memory leak alert" />

##### See leaks in "Debug Memory Graph":
<img src="docs/screen3.png?raw=true" title="Debug Memory Graph" />
