//
//  MovieItem.swift
//  MovieApp
//
//  Created by Doğukan Akyüz on 18.11.2024.
//

import SwiftUI

struct MovieItem: View {
    var movie = Movies()
    var width = 0.0
    var body: some View {
        VStack(spacing: 5){
            Image(movie.movie_image!).resizable().frame(width: width)
            
            Text(movie.movie_name!).foregroundStyle(.orange).bold().font(.system(size: 30))
            
            Button{
                print("\(movie.movie_name!) added!")
            }label: {
                Text("ADD")
                    .padding(10)
                    .background(.red)
                    .clipShape(.capsule)
                    .foregroundStyle(.white)
                    .font(.system(size: 20)).bold()
                    .padding(.bottom, 10)
            }
            
        }.background(Rectangle().fill(.black).shadow(color:.orange ,radius: 5))
    }
}

#Preview {
 MoviesPage()
}

