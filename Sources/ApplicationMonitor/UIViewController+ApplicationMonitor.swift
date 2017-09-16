// UIViewController+ApplicationMonitor.swift
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

extension UIViewController {

  static func replaceMethods() {

    method_exchangeImplementations(
      class_getInstanceMethod(self, #selector(UIViewController.viewDidLoad)),
      class_getInstanceMethod(self, #selector(UIViewController.me_muukii_transition_monitor_viewDidLoad)))

    method_exchangeImplementations(
      class_getInstanceMethod(self, #selector(UIViewController.viewWillAppear(_:))),
      class_getInstanceMethod(self, #selector(UIViewController.me_muukii_transition_monitor_viewWillAppear(_:))))

    method_exchangeImplementations(
      class_getInstanceMethod(self, #selector(UIViewController.viewDidAppear(_:))),
      class_getInstanceMethod(self, #selector(UIViewController.me_muukii_transition_monitor_viewDidAppear(_:))))

    method_exchangeImplementations(
      class_getInstanceMethod(self, #selector(UIViewController.viewWillDisappear(_:))),
      class_getInstanceMethod(self, #selector(UIViewController.me_muukii_transition_monitor_viewWillDisappear(_:))))

    method_exchangeImplementations(
      class_getInstanceMethod(self, #selector(UIViewController.viewDidDisappear(_:))),
      class_getInstanceMethod(self, #selector(UIViewController.me_muukii_transition_monitor_viewDidDisappear(_:))))
  }

  @objc fileprivate func me_muukii_transition_monitor_viewDidLoad() {
    ApplicationMonitor.viewControllerMonitorReport?.viewDidLoad(on: self)
    self.me_muukii_transition_monitor_viewDidLoad()
  }

  @objc fileprivate func me_muukii_transition_monitor_viewWillAppear(_ animated: Bool) {
    ApplicationMonitor.viewControllerMonitorReport?.viewWillAppear(on: self)
    self.me_muukii_transition_monitor_viewWillAppear(animated)
  }

  @objc fileprivate func me_muukii_transition_monitor_viewDidAppear(_ animated: Bool) {
    ApplicationMonitor.viewControllerMonitorReport?.viewDidAppear(on: self)
    self.me_muukii_transition_monitor_viewDidAppear(animated)
  }

  @objc fileprivate func me_muukii_transition_monitor_viewWillDisappear(_ animated: Bool) {
    ApplicationMonitor.viewControllerMonitorReport?.viewWillDisappear(on: self)
    self.me_muukii_transition_monitor_viewWillDisappear(animated)
  }

  @objc fileprivate func me_muukii_transition_monitor_viewDidDisappear(_ animated: Bool) {
    ApplicationMonitor.viewControllerMonitorReport?.viewDidDisappear(on: self)
    self.me_muukii_transition_monitor_viewDidDisappear(animated)
  }
}

