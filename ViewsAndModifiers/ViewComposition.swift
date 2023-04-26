//
//  ViewComposition.swift
//  ViewsAndModifiers
//
//  Created by ömer türkmen on 23.04.2023.
//

import SwiftUI

struct capsuledText: View{
    var text: String
    
    var body: some View{
        Text(text)
            .font(.largeTitle)
            .padding()
            .background(.blue)
            .clipShape(Capsule())
    }
}

struct ViewComposition: View {
    var body: some View {
        VStack{
            capsuledText(text: "First")
                .foregroundColor(.white)
            capsuledText(text: "Second")
                .foregroundColor(.yellow)
        }
    }
}

struct ViewComposition_Previews: PreviewProvider {
    static var previews: some View {
        ViewComposition()
    }
}
