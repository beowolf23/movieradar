//
//  ContentView.swift
//  movieradar
//
//  Created by beowolf23 on 18.01.2024.
//

import SwiftUI

struct ContentView: View {
    
    @State private var movies: [Movie] = []
    let movieService: MovieService = MovieService()
    
    var body: some View {
        VStack{
            List(movies, id: \.id) { movie in
                Text(movie.title)
            }
        }
        .onAppear {
            fetchMovies()
        }
    }
    
    func fetchMovies() {
        movieService.getMovies { result in
            switch result {
            case .success(let movies):
                self.movies = movies
                print(movies)
            case .failure(let error):
                print("Error fetching movies: \(error)")
            }
        }
    }
}

#Preview {
    ContentView()
}
