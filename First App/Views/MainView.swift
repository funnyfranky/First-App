//
//  MainView.swift
//  First App
//
//  Created by Josh Chapman on 12/25/25.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            Tab("Screen 1", systemImage: "star.fill") {
                SwiftTutorialView()
            }
            Tab("More", systemImage: "lasso") {
                ContentView()
            }
        }
    }
}

#Preview {
    MainView()
}
