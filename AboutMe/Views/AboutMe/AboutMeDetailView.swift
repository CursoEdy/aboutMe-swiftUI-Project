//
//  AboutMeDetailView.swift
//  AboutMe
//
//  Created by ednardo alves on 27/11/24.
//

import SwiftUI

struct AboutMeDetailView: View {
    @Environment(ModelData.self) var modelData
    var aboutMe: AboutMe
    
    var aboutMeIndex: Int {
        modelData.aboutMe.firstIndex(where: { $0.id == aboutMe.id})!
    }
    
    var body: some View {
        @Bindable var modelData = modelData
        
        ScrollView {
            VStack {
                BackgroundImage(image: aboutMe.imagem)
                    .frame(height: 600)
                    .offset(y: -350)
                    .padding(.bottom, -350)
                
                CircleImage(image: aboutMe.imagem)
                    .offset(y: -130)
                    .padding(.bottom, -130)
                
                VStack (alignment: .leading){
                    HStack {
                        Text(aboutMe.nome)
                            .font(.largeTitle)
                        BotaoFavorito(isSet: $modelData.aboutMe[aboutMeIndex].isFavorite)
                    }
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
            }
            .navigationTitle(aboutMe.nome)
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    let modelData = ModelData()
    AboutMeDetailView(aboutMe: ModelData().aboutMe[0])
        .environment(modelData)
}
