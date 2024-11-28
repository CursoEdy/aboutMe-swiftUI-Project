//
//  ContentView.swift
//  AboutMe
//
//  Created by ednardo alves on 27/11/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            BackgroundImage()
                .frame(height: 600)
                .offset(y: -350)
                .padding(.bottom, -350)
            
            CircleImage()
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack (alignment: .leading){
                Text("Edson Wilson")
                    .font(.largeTitle)
                HStack {
                    Text("Software Engineer")
                        .font(.subheadline)
                    Spacer()
                    Text("California")
                        .font(.subheadline)
                }
                
                Divider()
                
                Text("About Edson Wilson")
                    .font(.title2)
                Text("Descricao da Edson Wilson")
            }
            .padding()
            
            Spacer()
        }
    }
}

#Preview {
    ContentView()
}
