//
//  Event.swift
//  Quiz2Calendar1
//
//  Created by jchen on 10/26/15.
//  Copyright © 2015 jchen. All rights reserved.
//

import UIKit

class Event{
    var name: String = ""
    var date: String = ""
    var content: String = ""
    init? (name: String, date: String, content: String) {
        self.name = name
        self.date = date
        self.content = content
        
        
    }
    
}

