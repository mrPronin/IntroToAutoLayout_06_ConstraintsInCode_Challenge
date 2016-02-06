//
//  ViewController.swift
//  AutoLayout_Challenge8
//
//  Created by Brian Moakley on 1/26/15.
//  Copyright (c) 2015 Razeware. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    
    let containerWidth = UIScreen.mainScreen().bounds.size.width - 40.0
    
    let containerView = UIView()
    containerView.translatesAutoresizingMaskIntoConstraints = false
    containerView.backgroundColor = UIColor.orangeColor()
    containerView.layer.cornerRadius = 10.0
    containerView.clipsToBounds = true
    view.addSubview(containerView)
    
    NSLayoutConstraint(item: containerView, attribute: .Width, relatedBy: .Equal, toItem: nil, attribute: .NotAnAttribute, multiplier: 1.0, constant: containerWidth).active = true
    NSLayoutConstraint(item: containerView, attribute: .CenterX, relatedBy: .Equal, toItem: view, attribute: .CenterX, multiplier: 1.0, constant: 0.0).active = true
    NSLayoutConstraint(item: containerView, attribute: .CenterY, relatedBy: .Equal, toItem: view, attribute: .CenterY, multiplier: 1.0, constant: 0.0).active = true
    
    let userNameLabel = UILabel()
    userNameLabel.translatesAutoresizingMaskIntoConstraints = false
    userNameLabel.text = "Username:"
    userNameLabel.setContentCompressionResistancePriority(UILayoutPriority(800), forAxis: .Horizontal)
    containerView.addSubview(userNameLabel)
    
    let userNameTextField = UITextField()
    userNameTextField.translatesAutoresizingMaskIntoConstraints = false
    userNameTextField.placeholder = "User name"
    userNameTextField.borderStyle = .RoundedRect
    userNameTextField.setContentHuggingPriority(UILayoutPriority(200), forAxis: .Horizontal)
    containerView.addSubview(userNameTextField)
    
    NSLayoutConstraint(item: userNameTextField, attribute: .Top, relatedBy: .Equal, toItem: containerView, attribute: .TopMargin, multiplier: 1.0, constant: 0.0).active = true
    NSLayoutConstraint(item: userNameLabel, attribute: .Leading, relatedBy: .Equal, toItem: containerView, attribute: .LeadingMargin, multiplier: 1.0, constant: 0.0).active = true
    NSLayoutConstraint(item: userNameLabel, attribute: .Baseline, relatedBy: .Equal, toItem: userNameTextField, attribute: .Baseline, multiplier: 1.0, constant: 0.0).active = true
    NSLayoutConstraint(item: userNameTextField, attribute: .Leading, relatedBy: .Equal, toItem: userNameLabel, attribute: .Trailing, multiplier: 1.0, constant: 8.0).active = true
    NSLayoutConstraint(item: userNameTextField, attribute: .Trailing, relatedBy: .Equal, toItem: containerView, attribute: .TrailingMargin, multiplier: 1.0, constant: 0.0).active = true
    
    let passwordLabel = UILabel()
    passwordLabel.translatesAutoresizingMaskIntoConstraints = false
    passwordLabel.text = "Password:"
    passwordLabel.setContentCompressionResistancePriority(UILayoutPriority(800), forAxis: .Horizontal)
    containerView.addSubview(passwordLabel)
    
    let passwordTextField = UITextField()
    passwordTextField.translatesAutoresizingMaskIntoConstraints = false
    passwordTextField.placeholder = "Password"
    passwordTextField.borderStyle = .RoundedRect
    passwordTextField.setContentHuggingPriority(UILayoutPriority(200), forAxis: .Horizontal)
    containerView.addSubview(passwordTextField)
    
    NSLayoutConstraint(item: passwordTextField, attribute: .Top, relatedBy: .Equal, toItem: userNameTextField, attribute: .Bottom, multiplier: 1.0, constant: 8.0).active = true
    NSLayoutConstraint(item: passwordLabel, attribute: .Baseline, relatedBy: .Equal, toItem: passwordTextField, attribute: .Baseline, multiplier: 1.0, constant: 0.0).active = true
    NSLayoutConstraint(item: userNameLabel, attribute: .Left, relatedBy: .Equal, toItem: passwordLabel, attribute: .Left, multiplier: 1.0, constant: 0.0).active = true
    NSLayoutConstraint(item: userNameLabel, attribute: .Right, relatedBy: .Equal, toItem: passwordLabel, attribute: .Right, multiplier: 1.0, constant: 0.0).active = true
    
    NSLayoutConstraint(item: userNameTextField, attribute: .Left, relatedBy: .Equal, toItem: passwordTextField, attribute: .Left, multiplier: 1.0, constant: 0.0).active = true
    NSLayoutConstraint(item: userNameTextField, attribute: .Right, relatedBy: .Equal, toItem: passwordTextField, attribute: .Right, multiplier: 1.0, constant: 0.0).active = true
    
    let submitButton = UIButton()
    submitButton.translatesAutoresizingMaskIntoConstraints = false
    submitButton.setTitle("Submit", forState: .Normal)
    submitButton.setTitleColor(UIColor.blueColor(), forState: .Normal)
    submitButton.setTitleColor(UIColor.grayColor(), forState: .Highlighted)
    containerView.addSubview(submitButton)
    
    NSLayoutConstraint(item: submitButton, attribute: .CenterX, relatedBy: .Equal, toItem: containerView, attribute: .CenterX, multiplier: 1.0, constant: 0.0).active = true
    NSLayoutConstraint(item: submitButton, attribute: .Top, relatedBy: .Equal, toItem: passwordTextField, attribute: .Bottom, multiplier: 1.0, constant: 8.0).active = true
    NSLayoutConstraint(item: submitButton, attribute: .Bottom, relatedBy: .Equal, toItem: containerView, attribute: .BottomMargin, multiplier: 1.0, constant: 0.0).active = true
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


}

