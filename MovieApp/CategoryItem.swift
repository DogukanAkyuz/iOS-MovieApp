//
//  CategoryItem.swift
//  MovieApp
//
//  Created by Doğukan Akyüz on 19.11.2024.
//

import SwiftUI

struct CategoryItem: View {
    var category = Categories()
    var body: some View {
        Text(category.category_name!).bold().font(.system(size: 20)).foregroundStyle(.black)
    }
}




#Preview {
 HomePage()
}

