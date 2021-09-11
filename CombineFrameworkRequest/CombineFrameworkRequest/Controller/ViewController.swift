//
//  ViewController.swift
//  CombineFrameworkRequest
//
//  Created by User on 10/09/21.
//

import UIKit
import Combine


class ViewController: UIViewController {

    let apiService = ApiService()
    private var subscribers = Set<AnyCancellable>()

    override func viewDidLoad() {
        super.viewDidLoad()
        performSearch()
        
    }

    private func performSearch() {
        
        apiService.fetchSymbolsPublisher(symbol: "bidi4").sink { (completion) in
            switch completion {
            case .failure(let error):
                print(error.localizedDescription)
            case .finished: break
            }
            
        } receiveValue: { searchResults in
            print(searchResults)
        }.store(in: &subscribers)

    }
}

