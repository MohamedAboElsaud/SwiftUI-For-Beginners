//
//  SwiftUIIgnoreSafeArea.swift
//  SwiftUIFirst
//
//  Created by mohamed ahmed on 02/02/2025.
//

import SwiftUI

struct SwiftUIIgnoreSafeArea: View {
    var body: some View {
        

        ScrollView {
            VStack{
                Text("hello mohamed")
                    .font(.largeTitle)
                    .frame(maxWidth: .infinity,alignment: .leading)
                ForEach(0..<10){index in
                    RoundedRectangle(cornerRadius: 25.0)
                        .fill(.white)
                        .frame(height: 150)
                        .shadow(radius: 10)
                        .padding(20)
                }
            }
        }
        .background(
            Color.red
                .edgesIgnoringSafeArea(.all)
        )
    }
}

struct SwiftUIIgnoreSafeArea_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIIgnoreSafeArea()
    }
}
