//
//  Observer.swift
//  Clock
//
//  Created by Daniel Bermudez on 3/4/19.
//  Copyright © 2019 Your School. All rights reserved.
//

import Foundation
class Observer :NSObject{
    @objc var clockToObserve: CLock
    var observation:NSKeyValueObservation?
    init(clock: CLock){
        clockToObserve = clock
        super.init()
        observation =  clockToObserve.observe(\CLock.currentTime, options: .new){clock,change in
            return true
            
        }
    
    
    
}
}
