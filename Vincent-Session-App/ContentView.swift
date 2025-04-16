//
//  ContentView.swift
//  Vincent-Session-App
//
//  Created by eiji.shirakazu on 2025/04/09.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            List {
                Section {
                    NavigationLink(".formatted()") {
                        FormattedAPIView()
                    }
                    NavigationLink(".privacySensitive()") {
                        PrivacySensitiveView()
                    }
                    NavigationLink("Toggle's Button Style") {
                        ToggleButtonStyleView()
                    }
                } header: {
                    Text("iOS 15+")
                }

                Section {
                    NavigationLink("UIHostingConfiguration") {
                        HostingConfigurationView()
                    }
                    NavigationLink("TextField(_:,text:,axis:)") {
                        TextFieldAxisArgumentView()
                    }
                    NavigationLink("gradient API") {
                        GradientAPIView()
                    }
                } header: {
                    Text("iOS 16+")
                }

                Section {
                    NavigationLink("ContentUnavialableView.search") {
                        ContentUnavailableSearchView()
                    }
                    NavigationLink("SubscriptionStoreView") {
                        CustomSubscriptionStoreView()
                    }
                    NavigationLink(".scrollTargetBehavior()") {
                        ScrollTargetBehaviorView()
                    }
                    NavigationLink(".containerRelativeFrame(), visualEffect()") {
                        ContainerRelativeFrameView()
                    }
                    NavigationLink(".contentTransition(.numericText())") {
                        ContentTransitionNumericTextView()
                    }
                } header: {
                    Text("iOS 17+")
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
