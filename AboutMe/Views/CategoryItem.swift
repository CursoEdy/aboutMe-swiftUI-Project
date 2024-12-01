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
                .renderingMode(.original)
                .resizable()
                .scaledToFill()
                .frame(width: 155, height: 155)
                .cornerRadius(10)
            
            Text(aboutMe.nome)
                .foregroundStyle(.primary)
                .font(.caption)
        }
    }
}

#Preview {
    CategoryItem(aboutMe: ModelData().aboutMe[0])
}
