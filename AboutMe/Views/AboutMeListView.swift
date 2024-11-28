//
//  AboutMeListView.swift
//  AboutMe
//
//  Created by ednardo alves on 27/11/24.
//

import SwiftUI

struct AboutMeListView: View {
    var body: some View {
        List (aboutMe) { about in
            AbouteMeRowView(aboutMe: about)
        }
    }
}

#Preview {
    AboutMeListView()
}
