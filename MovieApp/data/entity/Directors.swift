//
//  Directors.swift
//  MovieApp
//
//  Created by Doğukan Akyüz on 18.11.2024.
//

import Foundation

class Directors: Identifiable {
    
    var director_id : Int?
    var director_name : String?
    
    
    init(director_id: Int, director_name: String?) {
        self.director_id = director_id
        self.director_name = director_name
    }
    
    
    init() {
        
    }
    
}
