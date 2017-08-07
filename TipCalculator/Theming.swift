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
    
    private var selectedTheme : ThemeStyles
    
    init(theme : ThemeStyles)
    {
        
        selectedTheme = theme
        switch theme
        {
        case .LightTheme:
            backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
            foregroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
            labelTextColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
            
            
        case .DarkTheme:
            backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
            foregroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
            labelTextColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
            
        }
    }
    
}
    

