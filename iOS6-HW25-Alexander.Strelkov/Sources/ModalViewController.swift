//
//  ModalViewController.swift
//  iOS6-HW25-Alexander.Strelkov
//
//  Created by Alexandr Strelkov on 09.08.2022.
//

import UIKit

class ModalViewController: UIViewController {
    
    @IBOutlet weak var artistLabel: UILabel!
    @IBOutlet weak var numberLabel: UILabel!
    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var cardImage: UIImageView!
    
    var magicCards: Cards?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.configureModal()
    }
    
    private func configureModal() {
        artistLabel.text = "Artist: \(magicCards?.artist ?? "no info")"
        numberLabel.text = "Number: \(magicCards?.number ?? "no info")"
        textLabel.text = "Description: \(magicCards?.text ?? "no info")"
    }
}


