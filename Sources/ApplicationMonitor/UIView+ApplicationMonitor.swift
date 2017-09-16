// UIView+ApplicationMonitor.swift
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

extension UIView {

  static func replaceMethods() {

    method_exchangeImplementations(
      class_getInstanceMethod(self, #selector(setNeedsLayout))!,
      class_getInstanceMethod(self, #selector(me_muukii_setNeedsLayout))!
    )

//    method_exchangeImplementations(
//      class_getInstanceMethod(self, #selector(UIView.setNeedsDisplay)),
//      class_getInstanceMethod(self, #selector(me_muukii_setNeedsDisplay))
//    )

//    method_exchangeImplementations(
//      class_getInstanceMethod(self, #selector(UIView.setNeedsDisplay(_:))),
//      class_getInstanceMethod(self, #selector(UIView.me_muukii_setNeedsDisplay(in:))
//    )
  }

  @objc dynamic fileprivate func me_muukii_setNeedsLayout() {
    ApplicationMonitor.viewMonitorReport?.setNeedsLayout(on: self)
    self.me_muukii_setNeedsLayout()
  }

//  @objc fileprivate func me_muukii_setNeedsDisplay() {
//    ApplicationMonitor.viewMonitorReport?.setNeedsDisplay(on: self)
//  }
//
//  @objc fileprivate func me_muukii_setNeedsDisplay(in rect: CGRect) {
//    ApplicationMonitor.viewMonitorReport?.setNeedsDisplay(in: rect, on: self)
//  }

  @nonobjc
  private static var didUIViewControllerInitialize: Bool = false
}

