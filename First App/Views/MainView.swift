//
//  MainView.swift
//  First App
//
//  Created by Josh Chapman on 12/25/25.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        VStack {
            Spacer()
            Text("Last Refreshed: \(Date.now.formatted(date: .omitted, time: .standard))")
            Spacer()
            CircleCardView()
            Spacer()
        }
    }
}


#Preview {
    MainView()
}
