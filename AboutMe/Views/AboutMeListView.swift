//
//  AboutMeListView.swift
//  AboutMe
//
//  Created by ednardo alves on 27/11/24.
//

import SwiftUI

struct AboutMeListView: View {
    var body: some View {
        NavigationSplitView {
            
            List (aboutMe) { about in
                NavigationLink{
                    AboutMeDetailView(aboutMe: about)
                } label: {
                    AbouteMeRowView(aboutMe: about)
                }
            }
            .navigationTitle("Profissionais")
        } detail: {
            Text("View datails")
        }
        .tint(.white)
    }
}

#Preview {
    AboutMeListView()
}
