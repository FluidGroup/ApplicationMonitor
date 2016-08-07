# ApplicationMonitor

[![CI Status](http://img.shields.io/travis/muukii/ApplicationMonitor.svg?style=flat)](https://travis-ci.org/muukii/ApplicationMonitor)
[![Version](https://img.shields.io/cocoapods/v/ApplicationMonitor.svg?style=flat)](http://cocoapods.org/pods/ApplicationMonitor)
[![License](https://img.shields.io/cocoapods/l/ApplicationMonitor.svg?style=flat)](http://cocoapods.org/pods/ApplicationMonitor)
[![Platform](https://img.shields.io/cocoapods/p/ApplicationMonitor.svg?style=flat)](http://cocoapods.org/pods/ApplicationMonitor)

## Setup

**Define receive report object**

```swift
public protocol ViewControllerMonitorReportProtocol {

    func viewDidLoad(viewController: UIViewController)
    func viewWillAppear(viewController: UIViewController)
    func viewDidAppear(viewController: UIViewController)
    func viewWillDisappear(viewController: UIViewController)
    func viewDidDisappear(viewController: UIViewController)
}

struct Report: ViewControllerMonitorReportProtocol {

    func viewDidLoad(viewController: UIViewController) {
        print("[ViewDidLoad] : \(viewController)")
    }

    func viewWillAppear(viewController: UIViewController) {
        print("[ViewWillAppear] : \(viewController)")
    }

    func viewDidAppear(viewController: UIViewController) {
        print("[ViewDidAppear] : \(viewController)")
    }

    func viewWillDisappear(viewController: UIViewController) {
        print("[ViewWillDisappear] : \(viewController)")
    }

    func viewDidDisappear(viewController: UIViewController) {
        print("[ViewDidDisappear] : \(viewController)")
    }
}
```

**Set**

```swift
ApplicationMonitor.setViewControllerMonitorReport(Report())
```

## Requirements

iOS8.0+

## Installation

ApplicationMonitor is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "ApplicationMonitor"
```

## Author

muukii, m@muukii.me

## License

ApplicationMonitor is available under the MIT license. See the LICENSE file for more info.
