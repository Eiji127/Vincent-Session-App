//
//  ContainerRelativeFrameView.swift
//  Vincent-Session-App
//
//  Created by eiji.shirakazu on 2025/04/16.
//

import SwiftUI

struct ContainerRelativeFrameView: View {

    let colors: [Color] = [.red, .green, .blue, .yellow]

    var body: some View {
        NavigationStack {
            List {
                Section {
                    NavigationLink("Use GeometryReader") {
                        // Use GeometryReader to get the size of the container
                        GeometryReader { proxy in
                            VStack {
                                ForEach(colors, id: \.self) { color in
                                    color.frame(
                                        height: proxy.size.height / CGFloat(colors.count)
                                    )
                                }
                            }
                        }
                        .padding()
                    }

                    NavigationLink("Use .containerRelativeFrame()") {
                        VStack {
                            ForEach(colors, id: \.self) { color in
                                color
                                    .containerRelativeFrame(
                                        .vertical,
                                        count: colors.count,
                                        spacing: 0
                                    )
                            }
                        }
                        .padding()
                    }
                } header: {
                    Text("container Relative Frame")
                }

                Section {
                    NavigationLink("Use GeometryReader") {
                        VStack {
                            ForEach(0..<6) { index in
                                GeometryReader { proxy in
                                    colors[index % colors.count]
                                        .frame(height: 100)
                                        .rotationEffect(
                                            .degrees(
                                                proxy.frame(in: .global).origin.y / 45
                                            )
                                        )
                                }
                                .background(.gray.opacity(0.3))
                            }
                        }
                        .padding()
                    }

                    NavigationLink("Use .visualEffect()") {
                        VStack {
                            ForEach(0..<6) { index in
                                colors[index % colors.count]
                                    .frame(height: 100)
                                    .visualEffect { content, proxy in
                                        content
                                            .rotationEffect(
                                                .degrees(
                                                    proxy.frame(in: .global).origin.y / 45
                                                )
                                            )
                                    }
                            }
                        }
                        .padding()
                    }
                } header: {
                    Text("Visual Effect")
                }
            }
        }
    }
}

#Preview {
    ContainerRelativeFrameView()
}
