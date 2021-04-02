//
//  CustomTableViewCell.swift
//  lab8
//
//  Created by Ануар Беисов on 01.04.2021.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    @IBOutlet weak var viewOutlet: UIView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var subtileLabel: UILabel!
    
    @IBOutlet weak var titleLabel2: UILabel!
    
    
    @IBAction func rightSlow(_ sender: Any) {
        
        
        
        UIView.animate(withDuration: 1, animations: {
                    UIView.animate(withDuration: 1, animations: {
                        self.viewOutlet.center = CGPoint(x: 300, y: (self.contentView.frame.height-45))
                    })
                    self.viewOutlet.alpha = 0
                })
    }
    @IBOutlet weak var subtitleLabel2: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
