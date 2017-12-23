//
//  BMPConfiguration.swift
//  BillMasterPro
//
//  Created by 星 鲁 on 2017/12/23.
//  Copyright © 2017年 xxing. All rights reserved.
//

import UIKit

class BMPConfiguration {
    
    var sections:[Any]
    
    init(withResource resource: String) {
        
        let plistURL = Bundle.main.url(forResource: resource, withExtension: "plist")
        let plist = NSDictionary(contentsOf: plistURL!)
        self.sections = plist?.value(forKey: "sections") as! [Any]
    }
    
    func numberOfSections() -> Int {
        
        return sections.count
    }
    
    func numberOfRows(inSecion section: Int) -> Int {
        
        let sectionDict = sections[section] as! Dictionary<String, Any?>
        return (sectionDict["rows"] as! [Any]).count
    }
}
