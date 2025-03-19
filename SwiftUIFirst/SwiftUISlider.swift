//
//  SwiftUISlider.swift
//  SwiftUIFirst
//
//  Created by mohamed ahmed on 05/02/2025.
//

import SwiftUI

struct SwiftUISlider: View {
    @State var sliderValue : Double = 3
    @State var color :Color = .red
    var body: some View {
        VStack{
            Text("Rating")
            Text(String(format: "%.2f", sliderValue))
            
            Slider(
                value: $sliderValue,
                in:1...5 ,
                step:1.0,
                onEditingChanged:{ _ in
                    color = .green
                    
                },
                minimumValueLabel: Text("1"),
                maximumValueLabel: Text("5"),
                label: {
                    Text("title")
                })
            .accentColor(.red)
        }
    }
}

struct SwiftUISlider_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUISlider()
    }
}
