//
//  MovieDetailPage.swift
//  MovieApp
//
//  Created by Doğukan Akyüz on 18.11.2024.
//

import SwiftUI

struct MovieDetailPage: View {
    var movie = Movies()
    var body: some View {
        VStack(){
            Text(movie.movie_name!).foregroundStyle(.white).bold().font(.system(size: 50)).lineLimit(nil).multilineTextAlignment(.center).padding()
            
            Image(movie.movie_image!).shadow(color: .orange, radius: 3).padding()
            
            Text(movie.director!.director_name!).font(.system(size: 30)).bold().foregroundStyle(.red).shadow(color: .white, radius: 1).padding()
            
            Text(String(movie.movie_year!)).font(.system(size: 50)).foregroundStyle(.orange).bold().shadow(color: .black, radius: 10).padding()
            
            Button{
                print("Detail: \(movie.movie_name!) added!")
            }label:{
                Text("ADD")
                    .foregroundStyle(.white).bold().font(.system(size: 30)).shadow(color: .black, radius: 3)
                .frame(width: 250, height: 50)
                .background(.orange)
                .clipShape(.containerRelative)
            }
            
        }
            .frame(maxWidth: .infinity, maxHeight: .infinity).background(.black)
    }
}

#Preview {
    MoviesPage()
}

