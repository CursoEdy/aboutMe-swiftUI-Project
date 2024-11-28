//
//  BackgroundImage.swift
//  AboutMe
//
//  Created by ednardo alves on 27/11/24.
//

import SwiftUI

struct BackgroundImage: View {
    let image: Image
    var body: some View {
        image
            .resizable()
            .ignoresSafeArea()
            .scaledToFit()
            .blur(radius: 10)
            .opacity(0.7)
    }
}

#Preview {
    BackgroundImage(image: Image("person3"))
}
