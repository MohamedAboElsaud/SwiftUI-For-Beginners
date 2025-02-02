//
//  SwiftUIText.swift
//  SwiftUIFirst
//
//  Created by mohamed ahmed on 31/01/2025.
//

import SwiftUI


struct SwiftUIText: View {
    var body: some View {
        Text("mcdlcdlkc fmlkvmlfvvfvf vfvfvvffvfvfvfv vfv vfvfvfvfvfvff mvlkm")
            .font(.system(size: 24, weight: .semibold, design: .serif))
            .baselineOffset(20)
            .multilineTextAlignment(.center)
            .foregroundColor(.red)
            .frame(width: 200, height: 100, alignment: .center)
            .minimumScaleFactor(0.1)
    }
}

struct SwiftUIText_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIText()
    }
}
