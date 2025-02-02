//
//  SwiftUIExtracting.swift
//  SwiftUIFirst
//
//  Created by mohamed ahmed on 02/02/2025.
//

import SwiftUI

struct SwiftUIExtracting: View {
    @State var backgroundColor:Color = .pink
    var body: some View {
        ZStack{
            backgroundColor.edgesIgnoringSafeArea(.all)
            
            contentLayer
        }
    }
    
    var contentLayer: some View{
        VStack{
            Text("hello mohamed")
                .font(.largeTitle)
            Button {
                buttonPressed()
            } label: {
                Text("press")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .background(.black)
                    .cornerRadius(10)
            }

        }
    }
    func buttonPressed(){
        backgroundColor = .purple
    }
}

struct SwiftUIExtracting_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIExtracting()
    }
}
