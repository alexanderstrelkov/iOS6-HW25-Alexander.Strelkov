//
//  NetworkManager.swift
//  iOS6-HW25-Alexander.Strelkov
//
//  Created by Alexandr Strelkov on 09.08.2022.
//

import Foundation

import Alamofire

class NetworkManager {
    
    func fetchCards(from url: String, complition: @escaping (Result<[Cards], AFError>) -> Void) {
        let request = AF.request(url)
        request.responseDecodable(of: MagicCards.self) { data in
            guard let cards = data.value else {
                if let error = data.error {
                    complition(.failure(error))
                }
                return }
            let magicCards = cards.cards
            complition(.success(magicCards))
        }
    }
}

