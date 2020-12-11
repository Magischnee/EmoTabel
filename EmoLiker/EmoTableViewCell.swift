//
//  EmoTableViewCell.swift
//  EmoLiker
//
//  Created by Максим on 08.12.2020.
//

import UIKit

class EmoTableViewCell: UITableViewCell {

    @IBOutlet weak var emojiLab: UILabel!
    
    @IBOutlet weak var nameLab: UILabel!
    
    @IBOutlet weak var descriptionLab: UILabel!
    
    // this function is equal to
    // cell?.nameLab.text = objectInTable.name
    // cell?.emojiLab.text = objectInTable.emoji
    // cell?.descriptionLab.text = objectInTable.description
    // in emojitableviewcontroller file and can be replaced
    func set(objectInTable: EmojiStruct){
        self.nameLab.text = objectInTable.name
        self.emojiLab.text = objectInTable.emoji
        self.descriptionLab.text = objectInTable.description
    }
}
