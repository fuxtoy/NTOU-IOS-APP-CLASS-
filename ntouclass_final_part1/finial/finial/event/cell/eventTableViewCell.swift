//
//  eventTableViewCell.swift
//  finial
//
//  Created by timchen on 2021/12/16.
//

import UIKit

class eventTableViewCell: UITableViewCell {

    @IBOutlet weak var eventaddress: UILabel!
    @IBOutlet weak var eventname: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
