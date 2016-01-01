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
    @IBOutlet var saveSettingsButton: UIButton!
    @IBOutlet var resetSettingsButton: UIButton!
    
    // User Defaults
    let defaults = NSUserDefaults.standardUserDefaults()
    
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
    
    @IBAction func saveSettingsOnPress(sender: AnyObject) {
        defaults.setInteger(getSettingsSliderMin(), forKey: "default_tip_slider_min")
        defaults.setInteger(getSettingsSliderMax(), forKey: "default_tip_slider_max")
        defaults.setBool(true, forKey: "default_custom_bounds")
        defaults.setBool(true, forKey: "default_settings_changed")
        defaults.synchronize()
    }
    
    @IBAction func resetSettingsOnPress(sender: AnyObject) {
        defaults.setInteger(0, forKey: "default_tip_slider_min")
        defaults.setInteger(30, forKey: "default_tip_slider_max")
        defaults.setBool(false, forKey: "default_custom_bounds")
        defaults.setBool(true, forKey: "default_settings_changed")
        defaults.synchronize()
        setSettingsSliderMin(0)
        setSettingsSliderMax(30)
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
        if defaults.boolForKey("default_custom_bounds") {
            setSettingsSliderMin(defaults.integerForKey("default_tip_slider_min"))
            setSettingsSliderMax(defaults.integerForKey("default_tip_slider_max"))
        }
        else {
            setSettingsSliderMin(0)
            setSettingsSliderMax(30)
        }
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
