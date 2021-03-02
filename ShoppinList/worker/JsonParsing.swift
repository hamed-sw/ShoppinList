//
//  JsonParsing.swift
//  ShoppinList
//
//  Created by Hamed Amiry on 01.03.2021.
//

import UIKit

class JsonParsing {
    
   
    typealias success = (ProductModel) -> ()
    static func parseJsonFile( onSucess: @escaping success) {
           if let url = URL(string: "https://firestore.googleapis.com/v1/projects/online-46aa4/databases/(default)/documents/Watches") {
            URLSession.shared.dataTask(with: url) { (data, response, error) in
                guard let data = data else {return}
              //  print(data)
                do {
                    let json = try JSONDecoder().decode( ProductModel.self, from: data)
                    onSucess(json)
                   // print(json)
                } catch {
                    print("error fond")
                    
                }
            }.resume()
        
      }
    }
    
}

