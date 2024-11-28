//
//  AboutMeApp.swift
//  AboutMe
//
//  Created by ednardo alves on 27/11/24.
//

import SwiftUI

@main
struct AboutMeApp: App {
    @State private var modelData =  ModelData()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(modelData)
        }
    }
}
