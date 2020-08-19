//
//  TableViewCellViewModel.swift
//  
//
//  Created by 张岩 on 2020/8/14.
//

import Foundation
class TableViewCellViewModel {
    func getTitle(product: Product) -> String{
        return "\(product.title)"
    }
}
