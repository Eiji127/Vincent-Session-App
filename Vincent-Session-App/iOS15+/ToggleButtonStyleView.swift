//
//  ToggleButtonStyleView.swift
//  Vincent-Session-App
//
//  Created by eiji.shirakazu on 2025/04/10.
//

import SwiftUI

struct ToggleButtonStyleView: View {
    @State private var isOn = false

    var body: some View {
        VStack {
            Toggle("Toggle Button Style", isOn: $isOn)
                .toggleStyle(.button)
                .padding()
        }
    }
}

#Preview {
    ToggleButtonStyleView()
}
