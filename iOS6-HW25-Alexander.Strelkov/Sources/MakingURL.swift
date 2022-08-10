//
//  MakingURL.swift
//  iOS6-HW25-Alexander.Strelkov
//
//  Created by Alexandr Strelkov on 10.08.2022.
//

import UIKit

class URLCreating {
    func getUrl() -> String {
        let urlProtocol = "https"
        let urlHost = "api.magicthegathering.io"
        let urlPath = "/v1/cards"
        
        var urlComponents = URLComponents()
        
        urlComponents.scheme = urlProtocol
        urlComponents.host = urlHost
        urlComponents.path = urlPath
        
        let magicCardsURL = urlComponents.url?.absoluteString ?? ""
        return magicCardsURL
    }
}


