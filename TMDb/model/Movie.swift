//
//  Movie.swift
//  movieradar
//
//  Created by beowolf23 on 24.01.2024.
//

import Foundation

///
/// A model representing a Movie
///
struct Movie: Identifiable, Decodable {
    
    ///
    /// Movie identifier
    ///
    public let id: Int
    
    ///
    /// Movie title
    ///
    public let title: String
    
    ///
    /// Movie genres
    ///
    public let genres: [Genre]
    
    ///
    /// Movie poster path
    ///
    public let backdropPath: URL?
    
    ///
    /// Vote average
    ///
    public let voteAverage: Double?
    
    ///
    /// Vote count
    ///
    public let voteCount: Int?
    
    /// Creates a Movie Object
    /// - Parameters:
    ///   - id: Movie identifier
    ///   - imdbID: Movie IMDb identifier
    ///   - title: Movie title
    ///   - posterPath: Movie poster paht
    ///   - voteAverage: Vote average
    ///   - voteCount: Vote count
    public init(
        id: Int,
        title: String,
        genres: [Genre],
        backdropPath: URL? = nil,
        voteAverage: Double? = nil,
        voteCount: Int? = nil
    ) {
        self.id = id
        self.title = title
        self.genres = genres
        self.backdropPath = backdropPath
        self.voteAverage = voteAverage
        self.voteCount = voteCount
    }
}

extension Movie {
    
    private enum CodingKeys: String, CodingKey {
        case id
        case title
        case genres
        case backdropPath
        case voteAverage
        case voteCount
    }
    
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        self.id = try container.decode(Int.self, forKey: .id)
        self.title = try container.decode(String.self, forKey: .title)
        self.genres = try container.decode([Genre].self, forKey: .genres)
        self.backdropPath = try container.decode(URL.self, forKey: .backdropPath)
        self.voteAverage = try container.decode(Double.self, forKey: .voteAverage)
        self.voteCount = try container.decode(Int.self, forKey: .voteCount)
    }
}
