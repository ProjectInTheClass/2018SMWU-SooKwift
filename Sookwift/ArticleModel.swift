//
//  ArticleModel.swift
//  Sookwift
//
//  Created by Abraham Park on 1/23/18.
//  Copyright © 2018 ebadaq.com. All rights reserved.
//

import Foundation

class ArticleModel {
    let title:String
    let desc:String
    let likeCount:Int
    let dislikeCount:Int
    let writtenDate:String
    
    var checked:Bool = false
    
    init(title:String, desc:String, likeCount:Int, dislikeCount:Int, writtenDate:String) {
        self.title = title
        self.desc = desc
        self.likeCount = likeCount
        self.dislikeCount = dislikeCount
        self.writtenDate = writtenDate
    }
}

class BoardModel {
    var arrayAritle:[ArticleModel] = []
    
    init() {
        self.arrayAritle.append(ArticleModel.init(title: "우리는 지금 이 겨울에 뭘하고 있는...", desc: "즐거운 수업을 듣고 있지~~....", likeCount: 200, dislikeCount: 5000, writtenDate: "2018.01.23 10:00 am"))
        self.arrayAritle.append(ArticleModel.init(title: "오늘 점심 어땠던가", desc: "뚝배기가 뜨거웠다..", likeCount: 10, dislikeCount: 5, writtenDate: "2018.01.23 01:00 pm"))
        self.arrayAritle.append(ArticleModel.init(title: "식후에는 역시 커피 한잔이 쵝오 >.<", desc: "즐거운 수업을 듣고 있지~~....", likeCount: 200, dislikeCount: 5000, writtenDate: "2018.01.23 10:00 am"))
        self.arrayAritle.append(ArticleModel.init(title: "만약 야외 수업을 하면 어떨까, 날씨도 좋은데", desc: "즐거운 수업을 듣고 있지~~....", likeCount: 0, dislikeCount: 10000, writtenDate: "2018.01.23 10:00 am"))
        self.arrayAritle.append(ArticleModel.init(title: "커피를 먹어도 졸려.. ㅠ.ㅜ", desc: "즐거운 수업을 듣고 있지~~....", likeCount: 1000, dislikeCount: 0, writtenDate: "2018.01.23 10:00 am"))

    }
}




















