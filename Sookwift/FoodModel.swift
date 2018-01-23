//
//  FoodModel.swift
//  Sookwift
//
//  Created by Abraham Park on 1/23/18.
//  Copyright © 2018 ebadaq.com. All rights reserved.
//

import Foundation

class Copetin {
    let name:String
    let image:String
    let latitude:Double
    let longitude:Double
    
    init(name:String, image:String, lati:Double, longi:Double){
        self.name = name
        self.image = image
        self.latitude = lati
        self.longitude = longi
    }
}

class FoodModel {
    var arrayList:[Copetin] = []
    
    init() {
        arrayList.append(Copetin.init(name: "쯔꾸시", image: "food1", lati: 0, longi: 0))
        arrayList.append(Copetin.init(name: "뽀빠 숙대점", image: "food2", lati: 0, longi: 0))
        arrayList.append(Copetin.init(name: "이리오너라", image: "food3", lati: 0, longi: 0))
        arrayList.append(Copetin.init(name: "학사분식", image: "food4", lati: 0, longi: 0))
        arrayList.append(Copetin.init(name: "감베로니", image: "food5", lati: 0, longi: 0))
    }
}



















