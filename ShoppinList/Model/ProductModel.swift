//
//  ProductModel.swift
//  ShoppinList
//
//  Created by Hamed Amiry on 01.03.2021.
//

import Foundation
struct ProductModel: Codable {
    let documents: [Store]?

}
struct Store: Codable {
    let fields: Product?
}
struct Product: Codable {
    let name: Name?
    let price: Price?
    let image: ImageUrl?
    let id : IdString?
}
struct Name: Codable {
    let stringValue: String?
}
struct Price: Codable {
    let doubleValue: Double?
}
struct ImageUrl: Codable {
    let stringValue: String?
}
struct IdString: Codable {
    let stringValue: String?
}




