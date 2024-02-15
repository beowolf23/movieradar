
//
//  Genre.swift
//  movieradar
//
//  Created by beowolf23 on 24.01.2024.
//

import Foundation

///
/// A model representing a movie genre
///
struct Genre: Identifiable, Decodable {
    
    ///
    /// Genre identifier
    ///
    public let id: Int
    
    ///
    /// Genre name
    ///
    public let name: String
    
    
    /// Creates a Genre Object
    /// - Parameters:
    ///   - id: Genre identifier
    ///   - name: Genre name
    public init(
        id: Int,
        name: String
    ) {
        self.id = id
        self.name = name
    }
}
