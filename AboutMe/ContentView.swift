//
//  ContentView.swift
//  AboutMe
//
//  Created by ednardo alves on 27/11/24.
//

import SwiftUI

struct ContentView: View {
    @State private var selection: Tab = .featured
    
    enum Tab {
        case featured
        case list
    }
    
    var body: some View {
            TabView (selection: $selection){
                CategoryHome()
                    .tabItem {
                        Label("Apresentação", systemImage: "star")
                    }
                    .tag(Tab.featured)
                
                AboutMeListView()
                    .tabItem {
                        Label("Lista", systemImage: "list.bullet")
                    }
                    .tag(Tab.list)
            }
        }
}

#Preview {
    ContentView().environment(ModelData())
}
