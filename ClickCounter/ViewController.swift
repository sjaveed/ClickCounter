//
//  ViewController.swift
//  ClickCounter
//
//  Created by Shahbaz Javeed on 4/22/15.
//  Copyright (c) 2015 Shahbaz Javeed. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var count = 0
    var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Label to display click count

        self.label = UILabel()
        self.label.frame = CGRectMake(150, 150, 60, 60)
        self.label.text = "0"
        
        self.view.addSubview(self.label)
        
        // Button whose clicks to count
        
        var button = UIButton()
        button.frame = CGRectMake(150, 250, 60, 60)
        button.setTitle("Click", forState: .Normal)
        button.setTitleColor(UIColor.blueColor(), forState: .Normal)
        button.addTarget(self, action: "incrementCounter", forControlEvents: UIControlEvents.TouchUpInside)

        self.view.addSubview(button)
    }
    
    func incrementCounter() {
        self.count++
        self.label.text = "\(self.count)"
    }

}

