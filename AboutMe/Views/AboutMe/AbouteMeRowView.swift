//
//  AbouteMeRowView.swift
//  AboutMe
//
//  Created by ednardo alves on 27/11/24.
//

import SwiftUI

struct AbouteMeRowView: View {
    var aboutMe: AboutMe
    
    var body: some View {
        HStack {
            aboutMe.imagem
                .resizable()
                .scaledToFill()
                .clipShape(Circle())
                .frame(maxWidth: 50, maxHeight: 50)
            Text(aboutMe.nome)
            
            Spacer()
            
            if aboutMe.isFavorite {
                Image(systemName: "star.fill")
                    .foregroundStyle(.yellow)
            }
        }
        
    }
}

#Preview {
    let aboutMe = ModelData().aboutMe
    AbouteMeRowView(aboutMe: aboutMe[0])
}
