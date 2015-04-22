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
        
        // Button that increments counter
        
        var incrementButton = UIButton()
        incrementButton.frame = CGRectMake(150, 250, 60, 60)
        incrementButton.setTitle("Increment", forState: .Normal)
        incrementButton.setTitleColor(UIColor.blueColor(), forState: .Normal)
        incrementButton.addTarget(self, action: "incrementCounter", forControlEvents: UIControlEvents.TouchUpInside)

        self.view.addSubview(incrementButton)

        // Button that decrements counter
        
        var decrementButton = UIButton()
        decrementButton.frame = CGRectMake(210, 250, 60, 60)
        decrementButton.setTitle("Decrement", forState: .Normal)
        decrementButton.setTitleColor(UIColor.blueColor(), forState: .Normal)
        decrementButton.addTarget(self, action: "decrementCounter", forControlEvents: UIControlEvents.TouchUpInside)
        
        self.view.addSubview(decrementButton)
    }
    
    func incrementCounter() {
        self.count++
        updateLabels()
    }
    
    func decrementCounter() {
        self.count--
        updateLabels()
    }

    private func updateLabels() {
        self.leftLabel.text = "\(self.count)"
        self.rightLabel.text = "\(self.count)"
    }
}

