//
//  JSONDecoder+TMDb.swift
//  movieradar
//
//  Created by beowolf23 on 24.01.2024.
//

import Foundation

extension JSONDecoder {
    
    static var theMovieDatabase: JSONDecoder {
        let decoder = JSONDecoder()
        decoder.keyDecodingStrategy = .convertFromSnakeCase
        return decoder
    }
}
