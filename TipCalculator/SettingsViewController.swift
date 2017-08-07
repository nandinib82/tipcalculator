//
//  SettingsViewController.swift
//  TipCalculator
//
//  Created by Nandini Bhattacharya on 8/6/17.
//  Copyright © 2017 Nandini Bhattacharya. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var tipDefaultControl: UISegmentedControl!
    
    @IBAction func defaultTipSelected(_ sender: Any)
    {
        let tipPercentIndex = tipDefaultControl.selectedSegmentIndex
        
        let defaults = UserDefaults.standard
        defaults.set(tipPercentIndex, forKey: "Default Tip Percentage")
        defaults.synchronize()
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        let defaults = UserDefaults.standard
        let intValue = defaults.integer(forKey:"Default Tip Percentage")
        
        tipDefaultControl.selectedSegmentIndex = intValue
        

    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
