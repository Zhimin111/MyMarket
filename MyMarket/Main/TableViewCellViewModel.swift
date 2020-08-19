//
//  TableViewCellViewModel.swift
//  MyMarket
//
//  Created by 张岩 on 2020/8/15.
//  Copyright © 2020 Apple Inc. All rights reserved.
//

import Foundation

class TableViewCellViewModel {
    
    
    
    func getTitle(product: Product) -> String{
        return "\(product.title)"
    }
    
    func getPhotoName(product: Product) -> String?{
        return product.photoName
    
    }
    
    
  
}
