//
//  TableViewModel.swift
//  Market
//
//  Created by 张岩 on 2020/8/12.
//  Copyright © 2020 Apple Inc. All rights reserved.
//

import Foundation

class TableViewModel {
    private var array: [Product]
    
    init() {
        self.array = [Product(title:"Banana", detail: " this is a kind of fruit",price:"2.0"),
                      Product(title:"Anana", detail:"I love it ",price:"1.0")]
    }
    
    func getNumberOfRows() -> Int{
        return array.count
    }
    func productAt(indexPath: IndexPath) ->Product{
        return array[indexPath.row]
    }
    
   
}
