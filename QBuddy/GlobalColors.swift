//
//  GlobalColors.swift
//  QBuddy
//
//  Created by Pinxuan Huang on 9/26/20.
//  Copyright © 2020 DTI. All rights reserved.
//

import Foundation
import UIKit

extension UIColor {
    //Main colors
    class func darkBlueColor() -> UIColor {
        return UIColor(red:115/255, green:125/255, blue:254/255, alpha: 1.0)
    }
    
    class func lightBlueColor() -> UIColor {
        return UIColor(red:194/255, green:229/255, blue:255/255, alpha:1.0)
    }
    
    class func redColor() -> UIColor {
        return UIColor(red:254/255, green:116/255, blue:127/255, alpha:1.0)
    }
    
    class func beigeColor() -> UIColor {
        return UIColor(red:255/255, green:234/255, blue:219/255, alpha:1.0)
    }
    
    class func mainGrayColor() -> UIColor {
        return UIColor(red:158/255, green:159/255, blue:173/255, alpha:1.0)
    }
    
    class func navyBlueColor() -> UIColor {
        return UIColor(red:46/255, green:58/255, blue:59/255, alpha:1.0)
    }
    
    //Grayscale
    
    // #FAFAFA
    class func lightGrayColor() -> UIColor {
        return UIColor(red:250/255, green:250/255, blue:250/255, alpha:1.0)
    }
    
    //Other colors
    
    // #C4C4C4
    class func buttonChoiceColor() -> UIColor {
        return UIColor(red:196/255, green:196/255, blue:196/255, alpha:1.0)
    }
    
}
