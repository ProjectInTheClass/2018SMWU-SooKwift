//
//  ArticleTableViewCell.swift
//  Sookwift
//
//  Created by Abraham Park on 1/23/18.
//  Copyright © 2018 ebadaq.com. All rights reserved.
//

import UIKit

class ArticleTableViewCell: UITableViewCell {
    @IBOutlet weak var labelTitle:UILabel!
    @IBOutlet weak var labelLike:UILabel!
    @IBOutlet weak var labelDislike:UILabel!
    @IBOutlet weak var labelDate:UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
}











