//
//  MovieResponse.swift
//  movieradar
//
//  Created by beowolf23 on 24.01.2024.
//

import Foundation

///
/// Structure representing the response model for the movies list encapsulated in an object
///
struct MovieResponse: Decodable {
    
    let results: [Movie]
}
