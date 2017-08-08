//
//  File.swift
//  TipCalculator
//
//  Created by Nandini Bhattacharya on 8/7/17.
//  Copyright © 2017 Nandini Bhattacharya. All rights reserved.
//


import UIKit

class Theme
{
    enum ThemeStyles : Int
    {
        case LightTheme = 0,
        DarkTheme
    }
    
    var backgroundColor : UIColor
    var foregroundColor : UIColor
    var labelTextColor : UIColor
    var textColor : UIColor
    var tintColor : UIColor
    var keyboardAppearance : UIKeyboardAppearance
    var buttonColor : UIColor
    
    private var selectedTheme : ThemeStyles
    
    init(theme : ThemeStyles)
    {
        
        selectedTheme = theme
        switch theme
        {
        case .LightTheme:
            backgroundColor = #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)
            foregroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
            labelTextColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
            keyboardAppearance = .default
            textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
            tintColor = #colorLiteral(red: 0.1019607857, green: 0.2784313858, blue: 0.400000006, alpha: 1)
            buttonColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
            
            
        case .DarkTheme:
            backgroundColor = #colorLiteral(red: 0.1019607857, green: 0.2784313858, blue: 0.400000006, alpha: 1)
            foregroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
            labelTextColor = #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)
            keyboardAppearance = .dark
            textColor = #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)
            tintColor = #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)
            buttonColor = #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)
            
        }
    }
    
}
    

