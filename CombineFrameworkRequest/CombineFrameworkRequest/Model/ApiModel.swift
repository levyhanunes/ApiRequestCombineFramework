//
//  ApiModel.swift
//  apiRequest
//
//  Created by User on 10/09/21.
//

import Foundation


struct SearchRsults: Codable {
    let by: String
    let valid_key: Bool
    let from_cache: Bool
    //let results: Results
}

struct Results: Codable {
    let currencies: Currencies
}

struct Currencies: Codable {
    let source: String
    let USD: USDCurrency
    let EUR: EURCurrency
    let GBP: GBPCurrency
    let ARS: ARSCurrency
    let CAD: CADCurrency
    let AUD: AUDCurrency
    let JPY: JPYCurrency
    let CNY: CNYCurrency
    let BTC: BTCCurrency
}

struct USDCurrency: Codable {
    let name: String
    let buy: Double
    let sell: Double
    let variation: Double
}
struct EURCurrency: Codable {
    let name: String
    let buy: Double
    let sell: Double
    let variation: Double
}
struct GBPCurrency: Codable {
    let name: String
    let buy: Double
    let sell: Double
    let variation: Double
}
struct ARSCurrency: Codable {
    let name: String
    let buy: Double
    let sell: Double
    let variation: Double
}
struct CADCurrency: Codable {
    let name: String
    let buy: Double
    let sell: Double
    let variation: Double
}
struct AUDCurrency: Codable {
    let name: String
    let buy: Double
    let sell: Double
    let variation: Double
}
struct JPYCurrency: Codable {
    let name: String
    let buy: Double
    let sell: Double
    let variation: Double
}
struct CNYCurrency: Codable {
    let name: String
    let buy: Double
    let sell: Double
    let variation: Double
}
struct BTCCurrency: Codable {
    let name: String
    let buy: Double
    let sell: Double
    let variation: Double
}
