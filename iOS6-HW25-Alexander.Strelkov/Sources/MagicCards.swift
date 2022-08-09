//
//  MagicCards.swift
//  iOS6-HW25-Alexander.Strelkov
//
//  Created by Alexandr Strelkov on 06.08.2022.
//

import Foundation

struct MagicCards: Decodable {
    let cards: [Cards]
}

struct Cards: Decodable {
    let name: String
    let type: String?
    let rarity: String?
    let setName: String
    let imageUrl: String?
}
