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
                ForEach(modelData.categorias.keys.sorted(), id: \.self) { key in
                    Text(key)
                }
            }
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
