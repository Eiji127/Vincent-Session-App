//
//  ContentUnavailableSearchView.swift
//  Vincent-Session-App
//
//  Created by eiji.shirakazu on 2025/04/13.
//

import SwiftUI

struct ContentUnavailableSearchView: View {
    @State private var searchText = ""
    @State private var isSearching = false

    var body: some View {
        NavigationStack {
            List {
                NavigationLink("ContentUnavailableView") {
                    ContentUnavailableView {
                        Label("No Mail", systemImage: "tray.fill")
                    } description: {
                        Text("New mail you received will appear here.")
                    }
                }
                NavigationLink("ContentUnavailableView.serach") {
                    ContentUnavailableView.search(text: "Tokyo")
                }
            }
        }
    }
}

#Preview {
    ContentUnavailableSearchView()
}


