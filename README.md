# UIKitPin

`UIKitPin` is a Swift package that provides an extension to `UIView` for easier and more concise constraint-based layout management in UIKit. It simplifies the process of setting constraints for common layout tasks such as pinning to edges, centering, and setting sizes.

## Features

- Pin views to any side of their superview with or without constants.
- Center views horizontally or vertically in their superview.
- Set width and height constraints with ease.
- A clean and readable API for managing constraints.

## Installation

You can add `UIKitPin` as a dependency using Swift Package Manager:

```swift
.package(url: "https://github.com/Maxim424/UIKitPin.git", from: "0.0.9")
```

## Usage

Import UIKitPin into your Swift file:

```swift
import UIKitPin
```

## Pinning to Superview

The pin(to: _:) method pins the view to the specified edges of its superview:

```swift
myView.pin(to: superview, [.top, .leading])
```

You can also add constants to each side:

```swift
myView.pin(to: superview, [.top: 10, .leading: 20])
```

## Centering in Superview

To center a view horizontally or vertically:

```swift
myView.pinCenterX(to: superview)
myView.pinCenterY(to: superview)
```

To center both horizontally and vertically:

```swift
myView.pinCenter(to: superview)
```

## Setting Width and Height

Set width and height constraints using:

```swift
myView.setWidth(to: 100)
myView.setHeight(to: 50)
```

---
Enjoy ❤️
