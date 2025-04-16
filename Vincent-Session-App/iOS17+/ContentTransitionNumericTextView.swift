//
//  ContentTransitionNumericTextView.swift
//  Vincent-Session-App
//
//  Created by eiji.shirakazu on 2025/04/16.
//

import SwiftUI

struct ContentTransitionNumericTextView: View {

    @State private var number = 100

    var body: some View {
        VStack(spacing: 20) {
            Text("\(number)")
                .contentTransition(
                    .numericText(countsDown: true)
                )

            Button {
                withAnimation {
                    number -= 1
                }
            } label: {
                Text("decrease")
            }
        }
        .font(.largeTitle)
    }
}

#Preview {
    ContentTransitionNumericTextView()
}

