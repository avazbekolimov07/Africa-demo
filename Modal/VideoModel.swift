//
//  VideoModel.swift
//  AfricaPro
//
//  Created by 1 on 09/05/21.
//

import Foundation

struct Video: Identifiable, Codable {
    let id : String
    let name : String
    let headline : String
    
    //Computed Property
    var thumbnail : String {
        "video-\(id)"
    }
}
