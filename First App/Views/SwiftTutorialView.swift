//
//  SwiftTutorialView.swift
//  First App
//
//  Created by Joshua Chapman on 12/24/25.
//

import SwiftUI

struct SwiftTutorialView: View {
    var colors: [Color] = [.blue, .cyan, .gray, .green, .indigo, .mint, .orange, .purple, .red]
//
    var activities = ["Archery", "Baseball", "Basketball", "Bowling", "Boxing", "Cricket", "Curling", "Fencing", "Golf", "Hiking", "Lacrosse", "Rugby", "Squash"]

    @State private var selected = "Bowling"
    @State private var id = 1
    
    var body: some View {
        VStack{
            Spacer()
            Text("Why not try...")
                .font(.largeTitle.bold())
            
            VStack {
                Circle()
                    .fill(colors.randomElement() ?? .mint)
                    .padding()
                    .overlay(
                        Image(systemName: "figure.\(selected.lowercased())")
                            .font(.system(size:144))
                            .foregroundColor(.white)
                    )
                Text("\(selected)!")
                    .font(.title)
            }
            .transition(.slide)
            .id(id)
            Spacer()
            Button("Get another!") {
                withAnimation() {
                    selected = activities.randomElement() ?? "Archery"
                    id += 1
                }
            }
            .buttonStyle(.borderedProminent)
//            Spacer()
        }
    }
}

#Preview {
    SwiftTutorialView()
}
