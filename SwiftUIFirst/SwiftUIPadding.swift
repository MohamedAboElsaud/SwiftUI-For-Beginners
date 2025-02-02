//
//  SwiftUIPadding.swift
//  SwiftUIFirst
//
//  Created by mohamed ahmed on 02/02/2025.
//

import SwiftUI

struct SwiftUIPadding: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .font(.largeTitle)
                .fontWeight(.semibold)
            
            Text("kmlmlmc ve;vkev;e ;kvkemvm;v kfnv;fv ;fkmvf;kmv ;kvm;kvm ;fkvfk ")
                
        }
        .padding()
        .padding(.vertical,10)
        .background(
            Color.white
                .cornerRadius(10)
                .shadow(color: Color.black.opacity(0.3), radius: 10, x: 0.0, y: 10)
        
        )
        
//            .frame(maxWidth: .infinity,alignment: .leading)
//            .padding(.leading,10)
        
//            .background(.red)
//            .padding(.all,10)
//            .padding(.leading,10)
//            .background(.orange)
    }
}

struct SwiftUIPadding_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIPadding()
    }
}
