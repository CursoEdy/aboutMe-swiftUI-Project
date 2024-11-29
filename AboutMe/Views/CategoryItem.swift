//
//  CategoryItem.swift
//  AboutMe
//
//  Created by ednardo alves on 28/11/24.
//

import SwiftUI

struct CategoryItem: View {
    var aboutMe: AboutMe
    
    var body: some View {
        VStack {
            aboutMe.imagem
                .resizable()
                .scaledToFill()
                .frame(width: 155, height: 155)
                .cornerRadius(10)
            
            Text(aboutMe.nome)
                .font(.caption)
        }
    }
}

#Preview {
    CategoryItem(aboutMe: ModelData().aboutMe[0])
}
