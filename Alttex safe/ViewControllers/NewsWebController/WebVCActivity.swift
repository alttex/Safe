//
//  WebVCActivity.swift
//  Alttex safe
//
//  Created by Vlad Kovryzhenko on 2/7/18.
//  Copyright © 2018 Vlad Kovryzhenko. All rights reserved.
//

import Foundation
import UIKit


class SwiftWebVCActivity: UIActivity {
    
    var URLToOpen: URL?
    var schemePrefix: String?
    
    override var activityType : UIActivityType? {
        let typeArray = "\(type(of: self))".components(separatedBy: ".")
        let _type: String = typeArray[typeArray.count-1]
        return UIActivityType(rawValue: _type)
    }
    
    override var activityImage : UIImage {
        if let type = activityType?.rawValue {
            return SwiftWebVC.bundledImage(named: "\(type)")!
        }
        else{
            assert(false, "Unknow type")
            return UIImage()
        }
    }
    
    override func prepare(withActivityItems activityItems: [Any]) {
        for activityItem in activityItems {
            if activityItem is URL {
                URLToOpen = activityItem as? URL
            }
        }
    }
    
}
