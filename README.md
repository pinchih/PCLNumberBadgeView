# PCLNumberBadgeView
A number/text badge view for iOS.

# Installation
* Copy ```PCLNumberBadgeView.swift``` to your project

# Usage
The following steps shows how to setup a basic PCLNumberBadgeView.

* Make your viewcontroller confirmed to the PCLNumberBadgeViewDataSource protocol.

* Assign the view's delegate to the controller, call the setup method and add it to the view.
```
// In your view controller, 
yourPCLNumberBadgeView.delegate = self
yourPCLNumberBadgeView.setup()
view.addSubView(yourPCLNumberBadgeView)
```

* Inplement the PCLNumberBadgeViewDataSource method
```
// For example
func imageForPriorityImage(BadgeView: PCLNumberBadgeView) -> UIImage {
        return UIImage(named: "Oliver.jpg")!
}
    
func textForBadge(BadgeView: PCLNumberBadgeView) -> String {
        return "5"
}
    
func widthAndHeightForTextLabel(BadgeView: PCLNumberBadgeView) -> Float {
        return 50.0
}
    
func backgroundColorForBadge(BadgeView: PCLNumberBadgeView) -> UIColor! {
        return UIColor.blackColor()
}
    
func locationForBadge(BadgeView: PCLNumberBadgeView) -> Int! {
        return 45
}
```
* Done!

# Example
![picture alt](https://github.com/pinchih/PCLNumberBadgeView/blob/master/pic_1.png?raw=true)
![picture alt](https://github.com/pinchih/PCLNumberBadgeView/blob/master/pic_2.png?raw=true)

# License
PCLNumberBadgeView is licensed under the terms of the MIT License. 
For more details, please see the [LICENSE](https://github.com/pinchih/PCLNumberBadgeView/blob/master/LICENSE.md) file.
