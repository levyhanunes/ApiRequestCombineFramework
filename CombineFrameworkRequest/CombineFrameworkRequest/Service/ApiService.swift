//
//  ApiService.swift
//  apiRequest
//
//  Created by User on 10/09/21.
//

import Foundation
import Combine

class ApiService {
    
    static let shared = ApiService()
    
    let apiKey = "9231c7c4"
    let symbol = "bidi4"
    
    func fetchSymbolsPublisher(symbol: String) -> AnyPublisher<SearchRsults, Error>{
        
        let urlString = "https://api.hgbrasil.com/finance/stock_price?key=\(self.apiKey)&symbol=\(symbol)"
        
        let url = URL(string: urlString)!
        
        return URLSession.shared.dataTaskPublisher(for: url)
            .map({ $0.data })
            .decode(type: SearchRsults.self, decoder: JSONDecoder())
            .receive(on: RunLoop.main)
            .eraseToAnyPublisher()
    }
}
