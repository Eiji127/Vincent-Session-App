//
//  GradientAPIView.swift
//  Vincent-Session-App
//
//  Created by eiji.shirakazu on 2025/04/13.
//

import SwiftUI

struct GradientAPIView: View {
    let colors: [Color] = [.red, .green, .blue]

    var body: some View {
        VStack {
            ForEach(colors, id: \.self) { color in
                Rectangle().fill(color.gradient)
            }
        }
        .padding()
    }
}

#Preview {
    GradientAPIView()
}
            

