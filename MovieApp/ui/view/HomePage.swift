//
//  HomePage.swift
//  MovieApp
//
//  Created by Doğukan Akyüz on 19.11.2024.
//

import SwiftUI

struct HomePage: View {
    
    init() {
        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor.black]
        
    }
    
    
    @ObservedObject private var viewModel = HomePageVM()
    
    var body: some View {
        NavigationStack{
            List{
                ForEach(viewModel.categoryList){ category in
                    NavigationLink(destination: MoviesPage(category: category)){
                        CategoryItem(category: category)
                    }
                }
                .listRowBackground(Color.gray)
            }
            .shadow(color: .orange, radius: 5)
            .background(.gray)
            .scrollContentBackground(.hidden)
            .navigationTitle("CATEGORIES")
            
        }.onAppear{
            viewModel.loadCategories()
        }
    }
}




#Preview {
    HomePage()
}

