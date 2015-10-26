//
//  EventTableViewCell.swift
//  Quiz2Calendar1
//
//  Created by jchen on 10/26/15.
//  Copyright © 2015 jchen. All rights reserved.
//

import UIKit

class EventTableViewCell: UITableViewCell {

    @IBOutlet weak var eventName: UILabel!
    
    @IBOutlet weak var eventDate: UILabel!
    
    @IBOutlet weak var eventContent: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
