//
//  BackgroundImage.swift
//  AboutMe
//
//  Created by ednardo alves on 27/11/24.
//

import SwiftUI

struct BackgroundImage: View {
    var body: some View {
        Image("person1")
            .resizable()
            .ignoresSafeArea()
            .scaledToFit()
            .blur(radius: 10)
            .opacity(0.7)
    }
}

#Preview {
    BackgroundImage()
}
