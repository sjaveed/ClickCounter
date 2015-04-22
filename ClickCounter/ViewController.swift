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
    var incrementButton: UIButton!
    var decrementButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Left Label to display click count

        leftLabel = UILabel()
        leftLabel.frame = CGRectMake(150, 150, 60, 60)
        leftLabel.text = "0"
        
        view.addSubview(self.leftLabel)
        
        // Right Label to display the same click count
        
        rightLabel = UILabel()
        rightLabel.frame = CGRectMake(210, 150, 60, 60)
        rightLabel.text = "0"
        
        view.addSubview(self.rightLabel)
        
        // Button that increments counter
        
        incrementButton = UIButton()
        incrementButton.frame = CGRectMake(150, 250, 60, 60)
        incrementButton.setTitle("Increment", forState: .Normal)
        incrementButton.setTitleColor(UIColor.blueColor(), forState: .Normal)
        incrementButton.addTarget(self, action: "updateLabels", forControlEvents: UIControlEvents.TouchUpInside)
        incrementButton.addTarget(self, action: "incrementCounter", forControlEvents: UIControlEvents.TouchDown)

        view.addSubview(incrementButton)

        // Button that decrements counter
        
        decrementButton = UIButton()
        decrementButton.frame = CGRectMake(210, 250, 60, 60)
        decrementButton.setTitle("Decrement", forState: .Normal)
        decrementButton.setTitleColor(UIColor.blueColor(), forState: .Normal)
        decrementButton.addTarget(self, action: "updateLabels", forControlEvents: UIControlEvents.TouchUpInside)
        decrementButton.addTarget(self, action: "incrementCounter", forControlEvents: UIControlEvents.TouchDown)
        
        self.view.addSubview(decrementButton)
    }

    func incrementCounter() {
        showButtonFeedback(incrementButton, colorToSet: UIColor.greenColor())
        self.count++
    }
    
    func decrementCounter() {
        showButtonFeedback(decrementButton, colorToSet: UIColor.redColor())
        self.count--
    }
    
    func updateLabels() {
        resetButtonFeedback(incrementButton)

        self.leftLabel.text = "\(self.count)"
        self.rightLabel.text = "\(self.count)"
    }
    
    private func resetButtonFeedback(button: UIButton) {
        showButtonFeedback(button, colorToSet: UIColor.whiteColor())
    }
    
    private func showButtonFeedback(button: UIButton, colorToSet: UIColor) {
        button.backgroundColor = colorToSet
    }
}

