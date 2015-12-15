//
//  SettingsViewController.swift
//  Tooltip
//
//  Created by Alex Clark on 12/14/15.
//  Copyright © 2015 Alex Clark. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    
    // Slider Settings
    @IBOutlet var sliderMinSettingsLabel: UITextField!
    @IBOutlet var sliderMaxSettingsLabel: UITextField!
    
    // Settings Buttons
    @IBOutlet var resetSettingsButton: UIButton!
    @IBOutlet var updateSettingsButton: UIButton!
    
    /*
            Get Funcs
    */
    
    func getSettingsSliderMin() -> Int {
        return NSString(string: sliderMinSettingsLabel.text!).integerValue
    }
    
    func getSettingsSliderMax() -> Int {
        return NSString(string: sliderMaxSettingsLabel.text!).integerValue
    }
    
    /*
            Set Funcs
    */
    
    func setSettingsSliderMin(nValue: Int){
        sliderMinSettingsLabel.text = "\(nValue)%"
    }
    
    func setSettingsSliderMax(nValue: Int) {
        sliderMaxSettingsLabel.text = "\(nValue)%"
    }
    
    
    
    /*
            Actions
    */
    
    @IBAction func resetSettingsOnPress(sender: AnyObject) {
    }
    
    @IBAction func updateSettingsOnPress(sender: AnyObject) {
    }
    
    @IBAction func settingsViewOnTap(sender: AnyObject) {
        view.endEditing(true)
    }
    
    
    /*
            Swift Load View Funcs
    */
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    /*override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let destination = segue.destinationViewController as! ViewController
        destination.setMinTipPercentage(getSettingsSliderMin())
        destination.setMaxTipPercentage(getSettingsSliderMax())
    }*/

}
