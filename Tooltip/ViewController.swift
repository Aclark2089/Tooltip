//
//  ViewController.swift
//  Tooltip
//
//  Created by Alex Clark on 12/14/15.
//  Copyright © 2015 Alex Clark. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    /*

            Outlets
    */
    
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
    
    /*
            Get Functions
    */
    
    func getTipPercentage() -> Double {
        return (NSString(string: tipPercentLabel.text!).doubleValue / 100)
    }
    
    func getCost() -> Double {
        return NSString(string: costTextField.text!).doubleValue
    }
    
    func getTipCost() -> Double {
        return NSString(string: tipCostLabel.text!).doubleValue
    }
    
    func getTotalCost() -> Double {
        return NSString(string: totalCostLabel.text!).doubleValue
    }
    
    /*
            Set Functions
    */
    
    func setTipPercentage(newV: Double) {
        tipPercentLabel.text = "\(Int(newV))%"
    }
    
    func setTipCost(newV: Double){
        tipCostLabel.text = String(format: "$%.2f", newV)
    }
    
    func setTotalCost(newV: Double){
        totalCostLabel.text = String(format: "$%.2f", newV)
    }
    
    /*
            Actions
    */
   
    @IBAction func tipSliderOnValueChanged(sender: AnyObject) {
        let value = Double(tipSlider.value)
        let currentCost = getCost()
        setTipPercentage(value)
        setTipCost(currentCost * getTipPercentage())
        setTotalCost((currentCost * getTipPercentage()) + currentCost)
    }
    
    
    @IBAction func costTextFieldOnEditingChanged(sender: AnyObject) {
        let cost = getCost()
        let tip = (cost * getTipPercentage())
        setTipCost(tip)
        setTotalCost(tip + cost)
    }

    @IBAction func viewOnTap(sender: AnyObject) {
        view.endEditing(true)
    }
    
    /*
            View Change Funcs
    */
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        print("view will appear")
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        print("view did appear")
    }
    
    override func viewWillDisappear(animated: Bool) {
        super.viewWillDisappear(animated)
        print("view will disappear")
    }
    
    override func viewDidDisappear(animated: Bool) {
        super.viewDidDisappear(animated)
        print("view did disappear")
    }


    /*
            Swift On Load Funcs
    */
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        tipCostLabel.text = "$"
        totalCostLabel.text = "$"
        
        let startPercent = (Int(tipSliderMaxLabel.text!)! + Int(tipSliderMinLabel.text!)!) / 2
        
        tipPercentLabel.text = "\(startPercent)%"
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    

}

