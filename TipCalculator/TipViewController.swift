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
    
    @IBOutlet weak var bottomView: UIView!
    @IBOutlet weak var topView: UIView!
    @IBOutlet weak var plusButton: UIButton!
    @IBOutlet weak var equalButton: UIButton!
    
    override func viewDidLoad()
    {
        NotificationCenter.default.addObserver(self, selector: #selector(TipViewController.localeChanged(notif:)), name:  NSLocale.currentLocaleDidChangeNotification, object: nil)
        
        let defaults = UserDefaults.standard
        let billAmount = defaults.integer(forKey:"Bill Amount")
        if billAmount != 0
        {
            billField.text = String(billAmount)
        }

    }
    
    func localeChanged(notif: NSNotification)
    {
        // locale (region format) in Settings was changed, so we are notified here
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        billField.becomeFirstResponder()
        
        updateTheme()
        let defaults = UserDefaults.standard
        let intValue = defaults.integer(forKey:"Default Tip Percentage")
        
        if intValue != tipControl.selectedSegmentIndex
        {
            tipControl.selectedSegmentIndex = intValue
        }
        
        calculateTipHelper()

    }
    
    
    override func viewDidDisappear(_ animated: Bool) {
        let billAmount = Double(billField.text!) ?? 0
        
        let defaults = UserDefaults.standard
        defaults.set(billAmount, forKey: "Bill Amount")
        defaults.synchronize()

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
        let tipPercentage = [15, 18, 20, 22]
        let tipPercent : Double = Double(tipPercentage[tipPercentageIndex])
        let tip : Double = billAmount * tipPercent / 100
        
        let formatter = NumberFormatter()
        formatter.locale = Locale.current
        formatter.numberStyle = .currency
        if let formattedTipAmount = formatter.string(from: tip as NSNumber)
        {
            tipLabel.text = "\(formattedTipAmount)"
        }
        
        let totalBillAmount = billAmount + tip
        if let formattedBillAmount = formatter.string(from: totalBillAmount as NSNumber)
        {
            totalAmountLabel.text = "\(formattedBillAmount)"
        }
        
        self.bottomView.alpha = 0
        UIView.animate(withDuration: 0.2, animations: {
            // This causes first view to fade in and second view to fade out
            self.bottomView.alpha = 1
        })

    }
    
    func updateTheme()
    {
        let defaults = UserDefaults.standard
        let themeIndex = defaults.integer(forKey:"Color Theme")
   
        let currentTheme = Theme(theme: Theme.ThemeStyles(rawValue: themeIndex as Theme.ThemeStyles.RawValue)!)
        view.backgroundColor = currentTheme.backgroundColor
        tipLabel.textColor = currentTheme.labelTextColor
        totalAmountLabel.textColor = currentTheme.labelTextColor
        
        billField.keyboardAppearance = currentTheme.keyboardAppearance
        
        billField.textColor = currentTheme.textColor
        
        tipControl.tintColor = currentTheme.tintColor
        plusButton.tintColor = currentTheme.buttonColor
        equalButton.tintColor = currentTheme.tintColor
        
        
        
    }
    
  }

