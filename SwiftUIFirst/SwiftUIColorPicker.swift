//
//  SwiftUIColorPicker.swift
//  SwiftUIFirst
//
//  Created by mohamed ahmed on 04/02/2025.
//

import SwiftUI

struct SwiftUIColorPicker: View {
    @State var selectioncolor:Color = .green
    var body: some View {
        ZStack{
            selectioncolor.edgesIgnoringSafeArea(.all)
            
            ColorPicker("select a color", selection: $selectioncolor, supportsOpacity: true)
                .padding()
                .background(.black)
                .cornerRadius(10)
                .foregroundColor(.white)
                .font(.headline)
                .padding(50)
        }
    }
}

struct SwiftUIColorPicker_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIColorPicker()
    }
}
