//
//  AboutMeListView.swift
//  AboutMe
//
//  Created by ednardo alves on 27/11/24.
//

import SwiftUI

struct AboutMeListView: View {
    @Environment(ModelData.self) var modelData
    @State private var soFavoritos: Bool = false
    
    var filtrandoFavoritos: [AboutMe] {
        modelData.aboutMe.filter { about in
            (!soFavoritos || about.isFavorite)
        }
    }
    
    var body: some View {
        NavigationSplitView {
            
            List  {
                    Toggle (isOn: $soFavoritos) {
                        Text("Favoritos")
                    }
                ForEach(filtrandoFavoritos) { about in
                    NavigationLink{
                        AboutMeDetailView(aboutMe: about)
                    } label: {
                        AbouteMeRowView(aboutMe: about)
                    }
                }
            }
            .animation(.default, value: filtrandoFavoritos)
            .navigationTitle("Pessoas")
        } detail: {
            Text("View datails")
        }
        .tint(.white)
    }
}

#Preview {
    AboutMeListView()
        .environment(ModelData())
}
