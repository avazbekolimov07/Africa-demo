//
//  CodableBundleExtension.swift
//  AfricaPro
//
//  Created by 1 on 05/05/21.
//

import SwiftUI

extension Bundle {
    func decode<T : Codable>(_ file: String) -> T {
        //1. Locate the JSON file
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Failed to locate \(file) in the bundle")
        }

        //2. Create a property or the data
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Failed to load \(url) from bundle.")
        }

        //3. Create a decoder
        let decoder = JSONDecoder()

        //4. Create a property for the decoder data
        guard let loaded = try? decoder.decode(T.self, from: data) else {
            fatalError("Failed to decode \(data) from bundle.")
        }


        //5. Return the ready-to-use data
        return loaded
    }

}


