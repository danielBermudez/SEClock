//
//  Clock.swift
//  Clock
//
//  Created by Daniel Bermudez on 2/28/19.
//  Copyright © 2019 Your School. All rights reserved.
//

import Foundation
class CLock{
    var newDate : Date?
    
    var currentTime :  Date{
        
        get {
        return Date()
        }set(date){
            newDate = date
        }
    }
}
