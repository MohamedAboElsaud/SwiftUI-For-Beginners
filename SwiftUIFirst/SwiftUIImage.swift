//
//  SwiftUIImage.swift
//  SwiftUIFirst
//
//  Created by mohamed ahmed on 01/02/2025.
//

import SwiftUI

struct SwiftUIImage: View {
    var body: some View {
        Image("im1")
            .resizable()
            .scaledToFill()
            .frame(width: 300,height: 200)
//            .clipped()
//            .cornerRadius(30)
            .clipShape(Circle())
    }
}

struct SwiftUIImage_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIImage()
    }
}
