//
//  SecondTableViewCell.swift
//  ConjugActionApp
//
//  Created by Bruno Lopes on 2023-11-27.
//

import UIKit

class SecondTableViewCell: UITableViewCell {
    
    static let identifier = "SecondTableViewCell"

    @IBOutlet weak var lblTableViewCell: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
