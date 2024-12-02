//
//  Movies.swift
//  MovieApp
//
//  Created by Doğukan Akyüz on 18.11.2024.
//

import Foundation

class Movies: Identifiable {
    
    var movie_id: Int?
    var movie_name: String?
    var movie_image: String?
    var movie_year: Int?
    var category: Categories?
    var director: Directors?
    
    init(movie_id: Int, movie_name: String, movie_image: String, movie_year: Int, category: Categories, director: Directors) {
        self.movie_id = movie_id
        self.movie_name = movie_name
        self.movie_image = movie_image
        self.movie_year = movie_year
        self.category = category
        self.director = director
    }
    
    init() {
        
    }
    
}
