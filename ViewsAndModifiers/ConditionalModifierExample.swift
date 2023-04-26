//
//  ConditionalModifierExample.swift
//  ViewsAndModifiers
//
//  Created by ömer türkmen on 26.04.2023.
//

import SwiftUI

struct ConditionalModifierExample: View {
    @State private var theTip = 0.00

        // Computed variable.
        // Did the patron leave a tip? Return TRUE or FALSE
        var leftATip: Bool { theTip > 0.00 }

        var body: some View {
            ZStack {
                // SwiftUI is declarative.
                // DECLARE what you want the user to see.
                Rectangle().foregroundColor( leftATip ? .green : .red)  // Declare the color based on the TIP value
                Text(totalTip).font(.largeTitle).padding(.horizontal)
            }
            // Change the value on each tap.
            .onTapGesture {
                theTip = leftATip ? 0.00 : Double.random(in: 5.0...9.0) // Tap to change the tip.
            }
        }

        // Format as a currency string.
        var totalTip: String {
            let formatter = NumberFormatter()
            formatter.numberStyle = .currency
            return formatter.string(from: NSNumber(value: theTip)) ?? "$0"
        }
}

struct ConditionalModifierExample_Previews: PreviewProvider {
    static var previews: some View {
        ConditionalModifierExample()
    }
}
