//
//  FormattedAPIView.swift
//  Vincent-Session-App
//
//  Created by eiji.shirakazu on 2025/04/12.
//

import SwiftUI

struct FormattedAPIView: View {
    // MARK: - Date Format
    let formattedTime: String = {
        let now = Date()

        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy/MM/dd HH:mm:ss"

        let formattedDate = formatter.string(from: now)
        return formattedDate
    }()

    let localizedTime: String = {
        let now = Date()
        return now.formatted()
    }()

    // MARK: - Number Format
    let percentValue: String = 0.42.formatted(.percent)
    let significantDigitsValue: String = 0.42.formatted(
        .number.precision(.significantDigits(3))
    )

    // MARK: - Collection Format
    let collectionValue: String = ["Option A", "Option B", "Option C"].formatted(.list(type: .or))

    var body: some View {
        List {
            Section {
                VStack(alignment: .leading) {
                    Text("Use DateFormatter Instance:\n\(formattedTime)")
                        .font(.headline)
                        .padding()

                    Text("Use formatted():\n\(localizedTime)")
                        .font(.headline)
                        .padding()
                }
            } header: {
                Text("Date Format")
            }

            Section {
                VStack(alignment: .leading) {
                    Text("%： \(percentValue)")
                        .font(.headline)
                        .padding()
                    Text("Significant Figures 3： \(significantDigitsValue)")
                        .font(.headline)
                        .padding()
                }
            } header: {
                Text("Numbers Format")
            }

            Section {
                VStack(alignment: .leading) {
                    Text("Collection： \(collectionValue)")
                        .font(.headline)
                        .padding()
                }
            } header: {
                Text("Collection Format")
            }
        }
    }
}

#Preview {
    FormattedAPIView()
}
