//
//  MovieView.swift
//  movieradar
//
//  Created by beowolf23 on 03.02.2024.
//

import SwiftUI

struct MovieView: View {
    
    let title: String
    
    
    var body: some View {
        VStack(alignment: .leading){
                
            Image("The Conjuring")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 200, height: 150)
                .background(Color.gray)
                .clipShape(.rect(cornerRadius: 15))
                .overlay {
                    
                }
                
            Text(title)
                .font(.title2)
                .padding(.leading)
        }
    }
}

#Preview {
    MovieView(title: "Movie title")
}
