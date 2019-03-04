//
//  Clock.swift
//  Clock
//
//  Created by Daniel Bermudez on 2/28/19.
//  Copyright © 2019 Your School. All rights reserved.
//

import Foundation
class CLock: NSObject{
    var timer : Timer?

    
   @objc dynamic var currentTime :  Date{
        return Date()
        
    }
    func setTimer(){
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(getter: CLock.currentTime), userInfo: nil, repeats: true)
        
    }

deinit{
    if let timer = self.timer{
        timer .invalidate()
    }
    
}
}
