//
//  TableViewModel.swift
//  MyMarket
//
//  Created by 张岩 on 2020/8/15.
//  Copyright © 2020 Apple Inc. All rights reserved.
//

import Foundation

class TableViewModel {
    private var array: [Product]
    
    init() {
        self.array = [
                      Product(title:"Anana", detail:"fruit ",price:"1.0",imageName: "anana", first: "from France",second:"20200820",third:"good for health",forth: "vitamin B",fifth: "on sale",photoName: "anana"),
                      Product(title:"Fraise", detail:"fruit ",price:"3.0",imageName: "fraise",first: "from France",second:"20200820",third:"good for health",forth: "vitamin B",fifth: "on sale",photoName: "fraise"),
                      Product(title:"Cerise", detail:"fruit ",price:"10.0",imageName: "cerise", first: "from France",second:"20200820",third:"good for health",forth: "vitamin B",fifth: "on sale",photoName: "cerise"),
                      Product(title:"Banana", detail:"fruit ",price:"1.0",imageName: "banana", first: "from France",second:"20200820",third:"good for health",forth: "vitamin B",fifth: "on sale",photoName: "banana"),
                      Product(title:"Apple", detail:"fruit ",price:"3.0",imageName: "apple",first: "from France",second:"20200820",third:"good for health",forth: "vitamin B",fifth: "on sale",photoName: "apple"),
                      Product(title:"Melon", detail:"fruit ",price:"10.0",imageName: "melon", first: "from France",second:"20200820",third:"good for health",forth: "vitamin B",fifth: "on sale",photoName: "melon"),
                      Product(title:"Watermelon", detail:"fruit",price:"1.0",imageName: "watermelon", first: "from France",second:"20200820",third:"good for health",forth: "vitamin B",fifth: "on sale",photoName: "watermelon"),
                      Product(title:"Orange", detail:"fruit ",price:"3.0",imageName: "orange",first: "from France",second:"20200820",third:"good for health",forth: "vitamin B",fifth: "on sale",photoName: "orange"),
                      Product(title:"Peach", detail:"fruit ",price:"10.0",imageName: "peach", first: "from France",second:"20200820",third:"good for health",forth: "vitamin B",fifth: "on sale",photoName: "peach"),
                      Product(title:"Pitaya", detail:"fruit ",price:"1.0",imageName: "pitaya", first: "from France",second:"20200820",third:"good for health",forth: "vitamin B",fifth: "on sale",photoName: "pitaya"),
                      Product(title:"Salade", detail:"vegetable ",price:"3.0",imageName: "salade",first: "from France",second:"20200820",third:"good for health",forth: "vitamin B",fifth: "on sale",photoName: "salade"),
                      Product(title:"Corn", detail:"vegetable",price:"10.0",imageName: "corn", first: "from France",second:"20200820",third:"good for health",forth: "vitamin B",fifth: "on sale",photoName: "corn"),
                      Product(title:"Tomato", detail:"vegetable",price:"1.0",imageName: "tomato", first: "from France",second:"20200820",third:"good for health",forth: "vitamin B",fifth: "on sale",photoName: "tomato"),
                      Product(title:"Potato", detail:"vegetable ",price:"3.0",imageName: "potato",first: "from France",second:"20200820",third:"good for health",forth: "vitamin B",fifth: "on sale",photoName: "potato"),
                      Product(title:"Sweet potato", detail:"I love it ",price:"10.0",imageName: "sweet potato", first: "from France",second:"20200820",third:"good for health",forth: "vitamin B",fifth: "on sale",photoName: "sweet potato"),
                      Product(title:"Eggplant", detail:"vegetable ",price:"1.0",imageName: "eggplant", first: "from France",second:"20200820",third:"good for health",forth: "vitamin B",fifth: "on sale",photoName: "eggplant"),
                      Product(title:"Grape", detail:"fruit ",price:"3.0",imageName: "grape",first: "from France",second:"20200820",third:"good for health",forth: "vitamin B",fifth: "on sale",photoName: "grape"),
                      Product(title:"Blueberry", detail:"fruit ",price:"10.0",imageName: "blueberry", first: "from France",second:"20200820",third:"good for health",forth: "vitamin B",fifth: "on sale",photoName: "blueberry"),
                      Product(title:"Evian", detail:"drink ",price:"3.0",imageName: "evian",first: "from France",second:"20200820",third:"good for health",forth: "vitamin B",fifth: "on sale",photoName: "evian"),
                      Product(title:"Milk", detail:"drink",price:"10.0",imageName: "milk", first: "from France",second:"20200820",third:"good for health",forth: "vitamin B",fifth: "on sale",photoName: "milk")
        ]
    }
    
    func getNumberOfRows() -> Int{
        return array.count
    }
    func productAt(indexPath: IndexPath) ->Product{
        return array[indexPath.row]
    }
   
   
}

