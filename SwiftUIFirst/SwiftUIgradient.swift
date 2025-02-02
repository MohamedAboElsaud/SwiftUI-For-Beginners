//
//  SwiftUIgradient.swift
//  SwiftUIFirst
//
//  Created by mohamed ahmed on 01/02/2025.
//

import SwiftUI

struct SwiftUIgradient: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(
                
//                LinearGradient(
//                    gradient: Gradient(colors: [Color(#colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)),Color(#colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1))]),
//                    startPoint: .topLeading,
//                    endPoint: .bottomTrailing)
                
//                RadialGradient(gradient: Gradient(colors: [.red,.blue]), center: .topLeading, startRadius: 5, endRadius: 400)
                
                AngularGradient(colors: [.cyan,.red], center: .topTrailing, startAngle: .degrees(0), endAngle: .degrees(330))
                
            )
            .frame(width: 300,height: 200)
        
    }
}

struct SwiftUIgradient_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIgradient()
    }
}
