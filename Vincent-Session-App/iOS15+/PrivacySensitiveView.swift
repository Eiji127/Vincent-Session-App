//
//  PrivacySensitiveView.swift
//  Vincent-Session-App
//
//  Created by eiji.shirakazu on 2025/04/10.
//

import SwiftUI

struct PrivacySensitiveView: View {
    var body: some View {
        VStack {
            Text("🔐 Privacy Sensitive Information")
                .padding()
            Text("Account Number: 1234567890")
                .fontWeight(.bold)
                .privacySensitive()
                .padding()
        }
    }
}

#Preview {
    PrivacySensitiveView()
}
