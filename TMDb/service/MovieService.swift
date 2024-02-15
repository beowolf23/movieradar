//
//  MovieService.swift
//  movieradar
//
//  Created by beowolf23 on 24.01.2024.
//

import Foundation

class MovieService {
    
    func getMovies(completion: @escaping (Result<[Movie], Error>) -> Void) {
        URLSession.shared.dataTask(with: URL.tmdbApiBaseURL) { data, _, error in
            if let error = error {
                completion(.failure(error))
                return
            }

            do {
                guard let data = data else {
                    throw NSError(domain: "InvalidData", code: 0, userInfo: nil)
                }

                let result = try JSONDecoder.theMovieDatabase.decode(Movie.self, from: data)
                DispatchQueue.main.async {
                    completion(.success([result]))
                }
            } catch {
                DispatchQueue.main.async {
                    completion(.failure(error))
                }
            }
        }
        .resume()
    }
}
