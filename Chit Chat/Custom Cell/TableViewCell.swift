//
//  TableViewCell.swift
//  Chit Chat
//
//  Created by Mizanur Remon on 14/2/20.
//  Copyright © 2020 Mizanur Remon. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {


    @IBOutlet weak var userAvatar: UIImageView!
    @IBOutlet weak var messageBody: UILabel!
    @IBOutlet weak var userName: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    /*override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }*/
    
}
