//
//  CustomSubscriptionStoreView.swift
//  Vincent-Session-App
//
//  Created by eiji.shirakazu on 2025/04/13.
//

import SwiftUI
import StoreKit

struct CustomSubscriptionStoreView: View {
    let productIDs: [String] = [
        "com.vincent.session.app.subscription.monthly",
        "com.vincent.session.app.subscription.yearly"
    ]

    var body: some View {
        SubscriptionStoreView(productIDs: productIDs) {
            VStack(spacing: 16) {
                Image(systemName: "dollarsign.square.fill")
                    .resizable()
                    .scaledToFit()
                    .foregroundStyle(.green)
                    .frame(width: 80)

                Text("Subscribe to Pro!")
            }
            .padding()
            .bold()
        }
        .storeButton(
            .visible,
            for: .restorePurchases
        )
        .onInAppPurchaseStart { product in
            // Handle the purchase start event
        }
        .onInAppPurchaseCompletion { product, result in
            // Handle the purchase completion event
        }
    }
}

#Preview {
    CustomSubscriptionStoreView()
}
