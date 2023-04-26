//
//  CustomModifiers.swift
//  ViewsAndModifiers
//
//  Created by ömer türkmen on 25.04.2023.
//

import SwiftUI

struct Title: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .foregroundColor(.white)
            .padding()
            .background(.blue)
            .clipShape(RoundedRectangle(cornerRadius: 10))
    }
}

// It is better to use extention for custom modifier
// Or we need to use modifier like this example
// Eg.: Text("Some Text").modifer(Title())
///Just create extension for last part --> modifier(Title())
///And we can use directly as modifier
extension View {
    func titleStyle() -> some View {
        modifier(Title())
    }
}


struct Watermark: ViewModifier {
    var text: String

    func body(content: Content) -> some View {
        ZStack(alignment: .bottomTrailing) {
            content
            Text(text)
                .font(.caption)
                .foregroundColor(.white)
                .padding(5)
                .background(.black)
        }
    }
}

extension View {
    func watermarked(with text: String) -> some View {
        modifier(Watermark(text: text))
    }
}

struct CustomModifiers: View {
    var body: some View {
        VStack(spacing: 80){
            Text("Hello, World!")
                .modifier(Title())
            
            
            Text("Hello Again")
                .titleStyle()
            
            Color.blue
                .frame(width: 300, height: 200)
                .watermarked(with: "Hacking with Swift")
           
            Text("Some Text")
                .modifier(Title())
        }
    }
}

struct CustomModifiers_Previews: PreviewProvider {
    static var previews: some View {
        CustomModifiers()
    }
}
