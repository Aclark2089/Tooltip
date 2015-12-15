//
//  ViewController.swift
//  Tooltip
//
//  Created by Alex Clark on 12/14/15.
//  Copyright © 2015 Alex Clark. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // Tip Cost
    @IBOutlet var tipCostLabel: UILabel!
    
    // Total Cost
    @IBOutlet var totalCostLabel: UILabel!
    
    // Cost Input
    @IBOutlet var costTextField: UITextField!
    
    // Slider
    @IBOutlet var tipSlider: UISlider!
    
    // Slider Tip Percent
    @IBOutlet var tipPercentLabel: UILabel!
    
    // Slider Max - Min Labels
    @IBOutlet var tipSliderMinLabel: UILabel!
    @IBOutlet var tipSliderMaxLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        tipCostLabel.text = "- - -"
        totalCostLabel.text = "- - -"
        
        let startPercent = (Int(tipSliderMaxLabel.text!)! + Int(tipSliderMinLabel.text!)!) / 2
        
        tipPercentLabel.text = "\(startPercent)%"
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func costTextFieldOnEditingChanged(sender: AnyObject) {
        
        if let cost = Double(costTextField.text!) {
            let tipCost = cost
            tipCostLabel.text = String(format: "$%.2f", tipCost)
            totalCostLabel.text = String(format: "$%.2f", cost)
        }
        
    }


}

