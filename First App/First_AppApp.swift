//
//  First_AppApp.swift
//  First App
//
//  Created by Joshua Chapman on 12/24/25.
//

import SwiftUI

@main
struct First_AppApp: App {
    var body: some Scene {
        WindowGroup {
            TabView {
                Tab("Screen 1", systemImage: "train.side.rear.car") {
                    SwiftTutorialView()
                }
                Tab("MainView", systemImage: "train.side.middle.car") {
                    MainView()
                }
                Tab("More", systemImage: "train.side.front.car") {
                    ContentView()
                }
            }
        }
    }
}
