//
//  SwiftUIColor.swift
//  SwiftUIFirst
//
//  Created by mohamed ahmed on 01/02/2025.
//

import SwiftUI

struct SwiftUIColor: View {
    var colorr = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.09803921569)
    
    
    
    var body: some View {
        
        RoundedRectangle(cornerRadius: 20)
            .fill(
                
//                Color( colorr)
//                Color(uiColor: UIColor.secondarySystemBackground)
                
                Color("CustomColor").opacity(0.5)
                
            )
            .frame(width: 300,height: 200)
            .shadow(color: Color.red.opacity(0.3), radius: 15, x: 1, y: 1)
            
    }
}

struct SwiftUIColor_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIColor()
    }
}
