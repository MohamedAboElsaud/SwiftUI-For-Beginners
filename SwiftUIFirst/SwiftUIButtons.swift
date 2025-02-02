//
//  SwiftUIButtons.swift
//  SwiftUIFirst
//
//  Created by mohamed ahmed on 02/02/2025.
//

import SwiftUI

struct SwiftUIButtons: View {
    var body: some View {
        Button {
            
        } label: {
            Text("save")
                .font(.caption)
                .bold()
                .foregroundColor(.gray)
                .padding(.horizontal,10)
                .background(
                Capsule()
                    .stroke(.gray,lineWidth: 2.0)
                )
        }

    }
}

struct SwiftUIButtons_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIButtons()
    }
}
