//
//  CategoryRow.swift
//  AboutMe
//
//  Created by ednardo alves on 28/11/24.
//

import SwiftUI

struct CategoryRow: View {
    var categoriaNome: String
    var items: [AboutMe]
    
    var body: some View {
        VStack (alignment: .leading) {
            Text(categoriaNome)
                .font(.headline)
                .padding(.leading, 15)
                .padding(.top, 5)
            
            ScrollView( .horizontal, showsIndicators: false) {
                HStack(alignment: .top, spacing: 10) {
                    ForEach(items) { item in
                        CategoryItem(aboutMe: item)
                    }
                }
            }
            .frame(height: 185)
        }
    }
}

#Preview {
    let aboutMe = ModelData().aboutMe
    CategoryRow(
        categoriaNome: aboutMe[0].categoria.rawValue,
        items: Array(aboutMe.prefix(4))
    )
}
