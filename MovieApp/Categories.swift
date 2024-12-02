//
//  Categories.swift
//  MovieApp
//
//  Created by Doğukan Akyüz on 18.11.2024.
//

import Foundation

class Categories: Identifiable {
    
    var category_id: Int?
    var category_name: String?
    
    
    init(){
        
    }
    
    
    init(category_id: Int, category_name: String) {
        self.category_id = category_id
        self.category_name = category_name
    }
    
    
    
    
}
