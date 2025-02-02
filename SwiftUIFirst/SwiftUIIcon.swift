//
//  SwiftUIIcon.swift
//  SwiftUIFirst
//
//  Created by mohamed ahmed on 01/02/2025.
//

import SwiftUI

struct SwiftUIIcon: View {
    var body: some View {
        Image(systemName: "heart.circle.fill")
            .renderingMode(.original)
            .resizable()
//            .aspectRatio(contentMode: .fit)
            .scaledToFit()
            .font(.system(size: 200))
            .foregroundColor(.orange)
            .frame(width: 300,height: 300)
    }
}

struct SwiftUIIcon_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIIcon()
    }
}
