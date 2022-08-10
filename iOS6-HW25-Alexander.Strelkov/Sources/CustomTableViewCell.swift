//
//  CustomTableViewCell.swift
//  iOS6-HW25-Alexander.Strelkov
//
//  Created by Alexandr Strelkov on 06.08.2022.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    
    @IBOutlet weak var name: UILabel!
    
    @IBOutlet weak var type: UILabel!
    
    @IBOutlet weak var setName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func configureCell(from cards: Cards) {
        name.text = "Card: \(cards.name)"
        type.text = "Card type: \(cards.type ?? "no information:(")"
        setName.text = "Set: \(cards.setName)"
    }
}
