//
//  Product.swift
//  MyMarket
//
//  Created by 张岩 on 2020/8/15.
//  Copyright © 2020 Apple Inc. All rights reserved.
//
import Foundation
import UIKit

struct Product{
    
   
    var imageName: String?
    var title: String
    var detail:String
    var price: String
    var first: String
    var second: String
    var third: String
    var forth: String
    var fifth: String
    var photoName: String?
   
    
    init(title: String, detail: String, price: String,imageName: String? ,first: String,second: String,third: String,forth: String,fifth: String,photoName: String?) {
        self.title = title
        self.detail = detail
        self.price = price
        self.first = first
        self.imageName = imageName
        self.second = second
        self.third = third
        self.forth = forth
        self.fifth = fifth
        self.photoName = photoName
    }
}


