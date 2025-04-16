//
//  ScrollTargetBehaviorView.swift
//  Vincent-Session-App
//
//  Created by eiji.shirakazu on 2025/04/16.
//

import SwiftUI

struct ScrollTargetBehaviorView: View {

    let color: [Color] = [.red, .green, .blue, .purple]

    var body: some View {
        ScrollView(.horizontal) {
            HStack(spacing: 20) {
                ForEach(0..<10) { index in
                    color[index % color.count]
                        .frame(width: 100, height: 100)
                        .cornerRadius(10)
                }
            }
            .scrollTargetLayout()
        }
        .scrollTargetBehavior(.viewAligned)
        .padding()
    }
}

#Preview {
    ScrollTargetBehaviorView()
}
