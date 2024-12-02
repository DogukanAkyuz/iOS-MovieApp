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
    
    
    @State private var categoryList = [Categories]()
    
    var body: some View {
        NavigationStack{
            List{
                ForEach(categoryList){ category in
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
                
                var list = [Categories]()
                let c1 = Categories(category_id: 1, category_name: "Action")
                let c2 = Categories(category_id: 2, category_name: "Dram")
                let c3 = Categories(category_id: 3, category_name: "Sci-Fi")
                
                list.append(c1)
                list.append(c2)
                list.append(c3)
                
                categoryList = list
        }
    }
}




#Preview {
    HomePage()
}

