//
//  DrinkModel.swift
//  Sookwift
//
//  Created by Abraham Park on 1/23/18.
//  Copyright © 2018 ebadaq.com. All rights reserved.
//

import Foundation

class Drink {
    let name:String
    let type:String
    
    init (name:String, type:String) {
        self.name = name
        self.type = type
    }
}

class DrinkModel {
    var arrayList:[Drink] = []
    
    init() {
        self.arrayList.append(Drink.init(name: "오늘의 커피", type: "커피"))
        self.arrayList.append(Drink.init(name: "밀크 티", type: "티"))
        self.arrayList.append(Drink.init(name: "아메리카노", type: "커피"))
        self.arrayList.append(Drink.init(name: "호밀차", type: "티"))
        self.arrayList.append(Drink.init(name: "환타", type: "탄산"))
        self.arrayList.append(Drink.init(name: "스파클링 사이다", type: "탄산"))
    }
    func filteredDrink(type:String) -> [Drink] {
        var arrayResult:[Drink] = []
        
        for drink in self.arrayList {
            if drink.type == type {
                arrayResult.append(drink)
            }
        }
        return arrayResult
    }
}





















