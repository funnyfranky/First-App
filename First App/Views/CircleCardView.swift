//
//  CircleCardView.swift
//  First App
//
//  Created by Josh Chapman on 12/26/25.
//

import SwiftUI
//import Foundation

struct CircleCardView: View {
    var body: some View {
        VStack {
            Circle()
                .fill(.green)
                .padding()
                .overlay(
                    Circle()
                        .fill(.gray)
                        .padding(45),
                    alignment: .trailing
                )
            Text("This is a circle.")
                .font(.system(size: 40))
        }
    }
}

#Preview {
    CircleCardView()
}
