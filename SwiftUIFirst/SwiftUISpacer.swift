//
//  SwiftUISpacer.swift
//  SwiftUIFirst
//
//  Created by mohamed ahmed on 02/02/2025.
//

import SwiftUI

struct SwiftUISpacer: View {
    
    
    var body: some View {
        HStack(spacing: nil) {
            Rectangle()
                .frame(width: 100, height: 100)
            Spacer()
            Rectangle()
                .fill(.red)
                .frame(width: 100, height: 100)
                
        }
        .background(.blue)
    }
}

struct SwiftUISpacer_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUISpacer()
    }
}
