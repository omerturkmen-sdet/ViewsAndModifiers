//
//  ContentView.swift
//  ViewsAndModifiers
//
//  Created by ömer türkmen on 23.04.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            Button("Hello, world!") {
                print(type(of: self.body))
            }
            .frame(width: 200, height: 200)
            .background(.red)
            
            Text("Hi")
                .padding()
                .background(.red)
                .padding()
                .background(.blue)
                .padding()
                .background(.green)
                .padding()
                .background(.yellow)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


// Modifiers Order

/// Let's use modifiers order like -->  .background, then .frame
///If we use backgroundColor modifier it will paint the text
///After that it will rearrange the text size. But it will not change the color of new size
