//
//  CategoryHome.swift
//  AboutMe
//
//  Created by ednardo alves on 28/11/24.
//

import SwiftUI

struct CategoryHome: View {
    @Environment(ModelData.self) var modelData
    
    var body: some View {
        NavigationSplitView {
            List{
                modelData.features[0].imagem
                    .resizable()
                    .scaledToFill()
                    .frame(height: 200)
                    .clipped()
                    .listRowInsets(EdgeInsets())
                
                ForEach(modelData.categorias.keys.sorted(), id: \.self) { key in
                    CategoryRow(categoriaNome: key, items: modelData.categorias[key]!)
                }
                .listRowInsets(EdgeInsets())
            }
            .listStyle(.inset)
            .navigationTitle("Apresentação")
        } detail: {
            Text("Detail View")
        }
    }
}

#Preview {
    CategoryHome()
        .environment(ModelData())
}
