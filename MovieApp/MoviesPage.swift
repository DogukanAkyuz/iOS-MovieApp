//
//  ContentView.swift
//  MovieApp
//
//  Created by Doğukan Akyüz on 18.11.2024.
//

import SwiftUI

struct MoviesPage: View {
    
    
    
    
    @State private var movieList = [Movies]()
    
    
    var category = Categories()
    var body: some View {
        
            GeometryReader{ geometry in
                let screenWidth = geometry.size.width
                let itemWidth = (screenWidth - 40) / 2
                ScrollView{
                    LazyVGrid(columns:
                                [GridItem(.flexible()), GridItem(.flexible())], spacing: 20){
                        ForEach(movieList){ movie in
                            NavigationLink(destination: MovieDetailPage(movie: movie)){
                                MovieItem(movie: movie, width: itemWidth)
                            }
                            
                            
                            
                        }
                    }
                    
                }
                
                .padding(10)
                .navigationTitle(category.category_name!)
                    .onAppear{
                        var list = [Movies]()
                        let c1 = Categories(category_id: 1, category_name: "Action")
                        let c2 = Categories(category_id: 2, category_name: "Dram")
                        let c3 = Categories(category_id: 3, category_name: "Sci-Fi")
                        
                        let d1 = Directors(director_id: 1, director_name: "Quentin Tarantino")
                        let d2 = Directors(director_id: 2, director_name: "Christopher Nolan")
                        let d3 = Directors(director_id: 3, director_name: "Nuri Bilge Ceylan")
                        let d4 = Directors(director_id: 4, director_name: "Roman Polanski")
                        
                        let m1 = Movies(movie_id: 1, movie_name: "Django", movie_image: "django", movie_year: 2014, category: c1, director: d1)
                        let m2 = Movies(movie_id: 2, movie_name: "Interstellar", movie_image: "interstellar", movie_year: 2015, category: c3, director: d2)
                        let m3 = Movies(movie_id: 3, movie_name: "Inception", movie_image: "inception", movie_year: 2010, category: c3, director: d2)
                        let m4 = Movies(movie_id: 4, movie_name: "Anadoluda", movie_image: "birzamanlaranadoluda", movie_year: 2011, category: c2, director: d3)
                        let m5 = Movies(movie_id: 5, movie_name: "The Pianist", movie_image: "thepianist", movie_year: 2008, category: c2, director: d4)
                        let m6 = Movies(movie_id: 6, movie_name: "The Hateful Eight", movie_image: "thehatefuleight", movie_year: 2007, category: c1, director: d1)
                        
                        list.append(m1)
                        list.append(m2)
                        list.append(m3)
                        list.append(m4)
                        list.append(m5)
                        list.append(m6)
                        
                        let finalList = list.filter({ $0.category!.category_id == category.category_id })
                        
                        movieList = finalList
                        
                    }
            }.frame(maxWidth: .infinity, maxHeight: .infinity).background(.black)
        .tint(.white)
        
        .scrollContentBackground(.hidden)
        
    }
}

/*
#Preview {
    MoviesPage()
}
*/
