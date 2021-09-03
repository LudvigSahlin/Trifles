# Trifles

This package is packed with small useful extension functions.
It also contains helper functions defined in Trifles.swift.

## Extension functions
Array:
- isNeitherNilNorEmpty

Date:
- todayMidnight
- tomorrowMidnight
- yesterdayMidnight

Optional:
- isNeitherNilNorEmpty

UIView:
- applyBorders
- applyShadow
- applyCardTraits

UIViewController:
- dismissKeyboardOnTap

## Other helper functions
Trifles:
- TextField.build // Adds subviews and sets basic styling. Sets no constraints.
- Button.build    // Adds subviews and sets basic styling. Sets no constraints.



# Usage:

Most functions should be self explanatory. Here are two examples:

    let (containerView, backgroundView, label) = Trifles.Button.build()
    containerView.applyBorders()

And if the keyboard should be dismissed when tapping:

    override func viewDidLoad() {
        super.viewDidLoad()
        dismissKeyboardOnTap()
    }



# License

The contents of this repository is licensed under the
[Apache License, version 2.0](http://www.apache.org/licenses/LICENSE-2.0).



# Contact

ludvigsahlin2@gmail.com
