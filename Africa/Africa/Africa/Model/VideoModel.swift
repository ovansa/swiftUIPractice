//
//  VideoModel.swift
//  Africa
//
//  Created by Muhammed Ibrahim on 20/02/2021.
//

import Foundation

struct Video: Codable, Identifiable {
    let id: String
    let name: String
    let headline: String
    
    var thumbnail: String {
        "video-\(id)"
    }
}
