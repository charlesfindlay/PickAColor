//
//  ColorWheel.swift
//  PickAColor
//
//  Created by Student on 9/22/15.
//  Copyright (c) 2015 Charles Findlay. All rights reserved.
//

import Foundation
import UIKit

enum ColorWheel: UInt32 {
    case teal
    case yellow
    case red
    case orange
    case dark
    case purple
    case green
    
    
    private static let _count: ColorWheel.RawValue = {
        // find the maximum enum value
        var maxValue: UInt32 = 0
        while let _ = ColorWheel(rawValue: ++maxValue) { }
        return maxValue
        }()
    
    static func getColor() -> ColorWheel {
        // pick and return a new value
        let rand = arc4random_uniform(_count)
        return ColorWheel(rawValue: rand)!
    }
    
    //Blahhhh
    
    func randomColor() -> UIColor {
        
        
        switch ColorWheel.getColor() {
        case .teal:
            return UIColor(red: 90/255.0, green: 187/255.0, blue: 181/255.0, alpha: 1.0)
        case .yellow:
            return UIColor(red: 222/255.0, green: 171/255.0, blue: 66/255.0, alpha: 1.0)
        case .red:
            return UIColor(red: 223/255.0, green: 86/255.0, blue: 94/255.0, alpha: 1.0)
        case .orange:
            return UIColor(red: 239/255.0, green: 130/255.0, blue: 100/255.0, alpha: 1.0)
        case .dark:
            return UIColor(red: 77/255.0, green: 75/255.0, blue: 82/255.0, alpha: 1.0)
        case .purple:
            return UIColor(red: 105/255.0, green: 94/255.0, blue: 133/255.0, alpha: 1.0)
        case .green:
            return UIColor(red: 85/255.0, green: 176/255.0, blue: 112/255.0, alpha: 1.0)
            
            
        }
    }
    
    init() {
        self = ColorWheel.getColor()
    }
    
    
}




/*
struct ColorWheel {
    
    let colorsArray = [
        UIColor(red: 90/255.0, green: 187/255.0, blue: 181/255.0, alpha: 1.0), //teal color
        UIColor(red: 222/255.0, green: 171/255.0, blue: 66/255.0, alpha: 1.0), //yellow color
        UIColor(red: 223/255.0, green: 86/255.0, blue: 94/255.0, alpha: 1.0), //red color
        UIColor(red: 239/255.0, green: 130/255.0, blue: 100/255.0, alpha: 1.0), //orange color
        UIColor(red: 77/255.0, green: 75/255.0, blue: 82/255.0, alpha: 1.0), //dark color
        UIColor(red: 105/255.0, green: 94/255.0, blue: 133/255.0, alpha: 1.0), //purple color
        UIColor(red: 85/255.0, green: 176/255.0, blue: 112/255.0, alpha: 1.0), //green color
    ]
    
    func randomColor() -> UIColor {
        let unsignedArrayCount = UInt32(colorsArray.count)
        let unsignedRandomNumber = arc4random_uniform(unsignedArrayCount)
        let randomNumber = Int(unsignedRandomNumber)
        
        return colorsArray[randomNumber]
    }
    
    
}
*/
