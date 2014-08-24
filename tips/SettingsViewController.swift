//
//  SettingsViewController.swift
//  tips
//
//  Created by Paul Lo on 8/24/14.
//  Copyright (c) 2014 Paul Lo. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var tipPercentageSelector: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        loadDefaultTipPercentage()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func loadDefaultTipPercentage() {
        var defaults = NSUserDefaults.standardUserDefaults()
        var defaultTipPercentage = defaults.integerForKey("defaultTipPercentage")
        tipPercentageSelector.selectedSegmentIndex = defaultTipPercentage
    }
    
    @IBAction func changedTipPercentage(sender: AnyObject) {
        var defaults = NSUserDefaults.standardUserDefaults()
        defaults.setInteger(tipPercentageSelector.selectedSegmentIndex, forKey: "defaultTipPercentage")
        defaults.synchronize()
    }
    
    @IBAction func doneEditing(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
    }

}
