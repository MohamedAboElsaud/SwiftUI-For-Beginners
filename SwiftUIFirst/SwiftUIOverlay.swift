//
//  SwiftUIOverlay.swift
//  SwiftUIFirst
//
//  Created by mohamed ahmed on 01/02/2025.
//

import SwiftUI

struct SwiftUIOverlay: View {
    var body: some View {
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//            .frame(width: 100,height: 100,alignment: .center)
//            .background(
//                Circle().fill(.red)
//            )
//            .frame(width: 120, height: 120, alignment: .center)
//            .background(
//                Circle().fill(.blue)
//
//            )
        
            Image(systemName: "heart.fill")
            .font(.system(size: 40))
            .foregroundColor(.white)
            .background(
            
                Circle()
                    .fill(
                    LinearGradient(gradient:Gradient( colors: [Color(#colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)),Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1))]),
                    startPoint: .topLeading,
                    endPoint: .bottomTrailing)
                    )
                .frame(width: 100,height: 100)
                .shadow(color: .black, radius: 10, x: 0, y: 10)
            )
        
    }
}

struct SwiftUIOverlay_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIOverlay()
    }
}
