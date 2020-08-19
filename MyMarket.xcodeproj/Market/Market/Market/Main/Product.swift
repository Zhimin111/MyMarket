//
//  Market.swift
//  Market
//
//  Created by 张岩 on 2020/8/12.
//  Copyright © 2020 Apple Inc. All rights reserved.
//

import Foundation
import UIKit

struct Product{
 
    var imageName: String?
    var title: String
    var detail:String
    var price: String
    
    init(title: String, detail: String, price: String) {
        self.title = title
        self.detail = detail
        self.price = price
    } 
}

