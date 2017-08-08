// ApplicationMonitor.swift
//
// Copyright (c) 2016 muukii
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in
// all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
// THE SOFTWARE.

import UIKit

public protocol ViewControllerMonitorReportProtocol {

  func viewDidLoad(on viewController: UIViewController)
  func viewWillAppear(on viewController: UIViewController)
  func viewDidAppear(on viewController: UIViewController)
  func viewWillDisappear(on viewController: UIViewController)
  func viewDidDisappear(on viewController: UIViewController)
}

public protocol ViewMonitorReportProtocol {

//  func setNeedsDisplay(on: UIView)
//  func setNeedsDisplay(in rect: CGRect, on: UIView)
  func setNeedsLayout(on: UIView)
  func touchesEnded(on: UIView, _ touches: Set<UITouch>, with event: UIEvent?)
}

public enum ApplicationMonitor {

  public static func setViewControllerMonitorReport(_ object: ViewControllerMonitorReportProtocol) {
    viewControllerMonitorReport = object
  }

  public static func setViewMonitorReport(_ object: ViewMonitorReportProtocol) {
    viewMonitorReport = object
  }

  internal static var viewControllerMonitorReport: ViewControllerMonitorReportProtocol?
  internal static var viewMonitorReport: ViewMonitorReportProtocol?
}
