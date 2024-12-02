//
//  ContentView.swift
//  MovieApp
//
//  Created by Doğukan Akyüz on 18.11.2024.
//

import SwiftUI

struct MoviesPage: View {
    
    
    
    
    
    @ObservedObject var viewModel = MoviesPageVM()
    
    var category = Categories()
    var body: some View {
        
            GeometryReader{ geometry in
                let screenWidth = geometry.size.width
                let itemWidth = (screenWidth - 40) / 2
                ScrollView{
                    LazyVGrid(columns:
                                [GridItem(.flexible()), GridItem(.flexible())], spacing: 20){
                        ForEach(viewModel.movieList){ movie in
                            NavigationLink(destination: MovieDetailPage(movie: movie)){
                                MovieItem(movie: movie, width: itemWidth)
                            }
                            
                            
                            
                        }
                    }
                    
                }
                
                .padding(10)
                .navigationTitle(category.category_name!)
                    .onAppear{
                        viewModel.loadMovies(category_id: category.category_id!)
                        
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
