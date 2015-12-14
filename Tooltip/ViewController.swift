//
//  ViewController.swift
//  Tooltip
//
//  Created by Alex Clark on 12/12/15.
//  Copyright © 2015 Alex Clark. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // User's Cost Field
    @IBOutlet weak var costTextField: UITextField!
    
    // Main Tip Amount
    @IBOutlet weak var tipAmountLabel: UILabel!
    
    // Split Tip Amounts
    @IBOutlet weak var split2TipLabel: UILabel!
    @IBOutlet weak var split3TipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

