//
//  DetailViewModel.swift
//  MyMarket
//
//  Created by 张岩 on 2020/8/15.
//  Copyright © 2020 Apple Inc. All rights reserved.
//

import Foundation


class DetailViewModel {
    var product: Product?
    
    func getTitle() -> String{
        guard let product = product else{
            return ""
        }
        return "\(product.title)"
    }
    
    func getImageName() -> String?{
        return product?.imageName
    
    }
    func getFirst() -> String{
        guard let product = product else{
            return ""
        }
        return "\(product.first)"

    }
    func getSecond() -> String{
        guard let product = product else{
            return ""
        }
        return "\(product.second)"

    }
    func getThird() -> String{
        guard let product = product else{
            return ""
        }
        return "\(product.third)"

    }
    func getForth() -> String{
        guard let product = product else{
            return ""
        }
        return "\(product.forth)"

    }
    func getFifth() -> String{
        guard let product = product else{
            return ""
        }
        return "\(product.fifth)"

    }
        
    
    }
 
   

