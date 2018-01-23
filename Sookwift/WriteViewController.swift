//
//  WriteViewController.swift
//  Sookwift
//
//  Created by Abraham Park on 1/23/18.
//  Copyright © 2018 ebadaq.com. All rights reserved.
//
import UIKit
import Foundation

class WriteViewController : UIViewController {
    var modelBoard:BoardModel!
    
    @IBOutlet weak var textFieldTitle: UITextField!
    
    
    @IBAction func touchSave(_ sender: Any) {
        let article = ArticleModel.init(title: self.textFieldTitle.text!,
                                        desc: "",
                                        likeCount: 0,
                                        dislikeCount: 0, writtenDate: "-")
        
        //self.modelBoard.arrayAritle.append(article)
        self.modelBoard.arrayAritle.insert(article, at: 0)
        
        self.navigationController?.popViewController(animated: true)
    }
}
























