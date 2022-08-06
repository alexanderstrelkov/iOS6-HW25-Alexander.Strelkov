//
//  MagicCards.swift
//  iOS6-HW25-Alexander.Strelkov
//
//  Created by Alexandr Strelkov on 06.08.2022.
//

import Foundation

struct MagicCards: Decodable {
  var cards: [Cards]
}

struct Cards: Decodable {
  let name: String
  let type: String
  let rarity: String
  let setName: String
  let image: String
   
  enum CodingKeys: String, CodingKey {
    case name
    case type
    case rarity
    case setName
    case image = "imageUrl"
  }
}
