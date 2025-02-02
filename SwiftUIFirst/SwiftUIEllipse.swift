//
//  SwiftUIEllipse.swift
//  SwiftUIFirst
//
//  Created by mohamed ahmed on 31/01/2025.
//

import SwiftUI

struct SwiftUIEllipse: View {
    var body: some View {
        Ellipse()
            .stroke(.blue,lineWidth: 30)
            .frame(width: 300, height: 400, alignment: .center)
        
    }
}

struct SwiftUIEllipse_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIEllipse()
    }
}
