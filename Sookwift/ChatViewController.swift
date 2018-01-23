//
//  ChatViewController.swift
//  Sookwift
//
//  Created by Abraham Park on 1/23/18.
//  Copyright © 2018 ebadaq.com. All rights reserved.
//

import UIKit

class ChatViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var viewInput: UIView!
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        var f = self.viewInput.frame
        
        f.origin.y = 230
        
        UIView.animate(withDuration: 4.0) {
            self.viewInput.frame = f
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
