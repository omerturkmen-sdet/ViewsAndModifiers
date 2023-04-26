//
//  ConditionalModifier.swift
//  ViewsAndModifiers
//
//  Created by ömer türkmen on 23.04.2023.
//

import SwiftUI

struct ConditionalModifier: View {
    @State private var useRedText = false
    var body: some View {
        Button("Click to change color"){
            useRedText.toggle()
        }
        .foregroundColor(useRedText ? .red : .blue)
    }
}

struct ConditionalModifier_Previews: PreviewProvider {
    static var previews: some View {
        ConditionalModifier()
    }
}
