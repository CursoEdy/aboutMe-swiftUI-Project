//
//  AboutMeDetailView.swift
//  AboutMe
//
//  Created by ednardo alves on 27/11/24.
//

import SwiftUI

struct AboutMeDetailView: View {
    var aboutMe: AboutMe
    
    var body: some View {
        VStack {
            BackgroundImage(image: aboutMe.imagem)
                .frame(height: 600)
                .offset(y: -350)
                .padding(.bottom, -350)
            
            CircleImage(image: aboutMe.imagem)
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack (alignment: .leading){
                Text(aboutMe.nome)
                    .font(.largeTitle)
                HStack {
                    Text(aboutMe.profissao)
                        .font(.subheadline)
                    Spacer()
                    Text("\(aboutMe.estado)")
                        .font(.subheadline)
                }
                
                Divider()
                
                Text("About \(aboutMe.nome)")
                    .font(.title2)
                Text("\(aboutMe.descricao)")
            }
            .padding()
            
            Spacer()
        }
    }
}

#Preview {
    AboutMeDetailView(aboutMe: aboutMe[0])
}
