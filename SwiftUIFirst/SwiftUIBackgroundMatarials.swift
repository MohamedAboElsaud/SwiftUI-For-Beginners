//
//  SwiftUIBackgroundMatarials.swift
//  SwiftUIFirst
//
//  Created by mohamed ahmed on 08/02/2025.
//

import SwiftUI

struct SwiftUIBackgroundMatarials: View {
    var body: some View {
        VStack{
            Spacer()
            VStack{
                RoundedRectangle(cornerRadius: 4)
                    .frame(width: 50, height: 4)
                    .padding()
                Spacer()
            }
            .frame(height: 350)
            .frame(maxWidth: .infinity)
            .background(.ultraThinMaterial)
            .cornerRadius(30)
        }
        .ignoresSafeArea()
        .background(Image("im1"))
    }
}

struct SwiftUIBackgroundMatarials_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIBackgroundMatarials()
    }
}
