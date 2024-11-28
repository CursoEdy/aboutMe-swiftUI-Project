//
//  CircleImage.swift
//  AboutMe
//
//  Created by ednardo alves on 27/11/24.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("person1")
            .resizable()
            .scaledToFill()
            .frame(width: 200, height: 200)
            .clipShape(Circle())
            .overlay {
                Circle().stroke(.white, lineWidth: 3)
            }
            .shadow(radius: 10)
    }
}

#Preview {
    CircleImage()
}
