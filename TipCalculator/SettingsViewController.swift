//
//  SettingsViewController.swift
//  TipCalculator
//
//  Created by Nandini Bhattacharya on 8/6/17.
//  Copyright © 2017 Nandini Bhattacharya. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet weak var tipDefaultControl: UISegmentedControl!
    
    @IBOutlet weak var themePickerView: UIPickerView!
    
    var pickerData: [String] = [String]()
    
    @IBAction func defaultTipSelected(_ sender: Any)
    {
        let tipPercentIndex = tipDefaultControl.selectedSegmentIndex
        
        let defaults = UserDefaults.standard
        defaults.set(tipPercentIndex, forKey: "Default Tip Percentage")
        defaults.synchronize()
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        self.themePickerView.dataSource = self
        self.themePickerView.delegate = self
        
        pickerData = ["Light Theme", "DarkTheme"]
        
        let defaults = UserDefaults.standard
        let intValue = defaults.integer(forKey:"Default Tip Percentage")
        
        tipDefaultControl.selectedSegmentIndex = intValue
        

    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // The number of columns of data
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    // The number of rows of data
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int
    {
        return pickerData.count
    }
    
    // The data to return for the row and component (column) that's being passed in
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pickerData[row]
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
