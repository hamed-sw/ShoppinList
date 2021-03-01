//
//  ProductModel.swift
//  ShoppinList
//
//  Created by Hamed Amiry on 01.03.2021.
//

import Foundation

struct ProductModel: Codable {
    let store: [Store]
     enum CodingKeys: String, CodingKey {
        case store = "documents"
    }
}

struct StringValue: Codable {
    let value: String?
   // let integerValue: Int?
    
     enum CodingKeys: String, CodingKey {
        case value = "stringValue"
       // case integerValue
    }
//    enum Codingkeys: Int, CodingKey {
//        case integerValue
//    }
    
    
    
    
}

struct Store: Codable {
    let name: String?
    //let price: Int?
    let image: String?
    let id: String?
     enum StoreKeys: String, CodingKey {
        case fields
    }
     enum FieldKeys: String, CodingKey {
        case name
      //  case price
        case image
        case id
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StoreKeys.self)
       let fieldConter = try container.nestedContainer(keyedBy: FieldKeys.self, forKey: .fields)
        name = try fieldConter.decode(StringValue.self, forKey: .name).value
        image = try fieldConter.decode(StringValue.self, forKey: .image).value
        id = try fieldConter.decode(StringValue.self, forKey: .id).value
       // price = try fieldConter.decode(StringValue.self, forKey: .price).integerValue
    }
}


