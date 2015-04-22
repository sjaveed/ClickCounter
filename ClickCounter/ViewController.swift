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
    var leftLabel: UILabel!
    var rightLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Left Label to display click count

        self.leftLabel = UILabel()
        self.leftLabel.frame = CGRectMake(150, 150, 60, 60)
        self.leftLabel.text = "0"
        
        self.view.addSubview(self.leftLabel)
        
        // Right Label to display the same click count
        
        self.rightLabel = UILabel()
        self.rightLabel.frame = CGRectMake(210, 150, 60, 60)
        self.rightLabel.text = "0"
        
        self.view.addSubview(self.rightLabel)
        
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
        self.leftLabel.text = "\(self.count)"
        self.rightLabel.text = "\(self.count)"
    }

}

