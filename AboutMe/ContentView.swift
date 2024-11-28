//
//  ContentView.swift
//  AboutMe
//
//  Created by ednardo alves on 27/11/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        AboutMeListView()
    }
}

#Preview {
    ContentView().environment(ModelData())
}
