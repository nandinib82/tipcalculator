//
//  TipViewController.swift
//  TipCalculator
//
//  Created by Nandini Bhattacharya on 8/6/17.
//  Copyright © 2017 Nandini Bhattacharya. All rights reserved.
//

import UIKit

class TipViewController: UIViewController {

    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalAmountLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let defaults = UserDefaults.standard
        let intValue = defaults.integer(forKey:"Default Tip Percentage")
        
        tipControl.selectedSegmentIndex = intValue
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        let defaults = UserDefaults.standard
        let intValue = defaults.integer(forKey:"Default Tip Percentage")
        
        if intValue != tipControl.selectedSegmentIndex
        {
            tipControl.selectedSegmentIndex = intValue
            calculateTipHelper()
        }
    }


    @IBAction func onTap(_ sender: Any) {
       view.endEditing(true)
    }

    @IBAction func calculateTip(_ sender: Any)
    {
        calculateTipHelper()
        
    }
        
    func calculateTipHelper()
    {
        let billAmount = Double(billField.text!) ?? 0
        let tipPercentageIndex = tipControl.selectedSegmentIndex
        let tipPercentage = [15, 18, 20]
        let tipPercent : Double = Double(tipPercentage[tipPercentageIndex])
        let tip : Double = billAmount * tipPercent / 100
        tipLabel.text = String(tip)
        totalAmountLabel.text = String(billAmount + tip)
    }
}

