//
//  TextFieldAxisArgumentView.swift
//  Vincent-Session-App
//
//  Created by eiji.shirakazu on 2025/04/13.
//

import SwiftUI

struct TextFieldAxisArgumentView: View {
    @State private var text: String = ""

    var body: some View {
        List {
            Section {
                TextField(
                    "Enter text",
                    text: $text
                )
                .frame(width: 200)
                .textFieldStyle(.roundedBorder)
                .padding()
            } header: {
                Text("No Axis Argument")
            }

            Section {
                TextField(
                    "Enter text",
                    text: $text,
                    axis: .vertical
                )
                .frame(width: 200)
                .textFieldStyle(.roundedBorder)
                .padding()
            } header: {
                Text("Set Axis Argument")
            }
        }
    }
}

#Preview {
    TextFieldAxisArgumentView()
}


