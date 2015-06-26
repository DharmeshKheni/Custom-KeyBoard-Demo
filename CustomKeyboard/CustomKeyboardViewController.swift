//
//  CustomKeyboardViewController.swift
//  CustomKeyboard
//
//  Created by Brian Donohue on 6/5/14.
//  Copyright (c) 2014 Brian Donohue. All rights reserved.
//

import Foundation
import UIKit

class CustomKeyboardViewController: UIViewController {
    var textView: UITextView?
    
    override func loadView() {
        self.view = UIView(frame: UIScreen.mainScreen().applicationFrame)
        self.textView = UITextView(frame: CGRect(x: 0.0, y: 0.0,
                                                 width: 100,
                                                 height: 100))
        self.textView?.backgroundColor = UIColor.greenColor()
        self.view.addSubview(self.textView!)
        
        var button=UIButton(frame: CGRectMake(150, 240, 75, 30))
        button.setTitle("change", forState: UIControlState.Normal)
        button.addTarget(self, action: "buttonTapAction", forControlEvents: UIControlEvents.TouchUpInside)
        button.backgroundColor = UIColor.greenColor()
        self.view.addSubview(button)
    }
    
    func buttonTapAction() {
    
        NSUserDefaults.standardUserDefaults().setInteger(1, forKey: "abc")
    }
    
    override func viewDidLoad() {
        self.textView!.becomeFirstResponder()
    }
}
