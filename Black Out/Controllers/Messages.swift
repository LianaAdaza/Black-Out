//
//  Messages.swift
//  Black Out
//
//  Created by Liana Adaza on 7/16/20.
//  Copyright © 2020 Liana Adaza. All rights reserved.
//

import UIKit

class messages {
    var name : String
    var markAsRead : Bool
    
    init(text : String){
        self.name = text
        self.markAsRead = false
}
}
