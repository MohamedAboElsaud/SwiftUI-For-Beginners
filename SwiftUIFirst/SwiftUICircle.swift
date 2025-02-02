//
//  SwiftUICircle.swift
//  SwiftUIFirst
//
//  Created by mohamed ahmed on 31/01/2025.
//

import SwiftUI

struct SwiftUICircle: View {
    var body: some View {
//        Circle().trim(from: 0.5,to: 1)
//            .stroke(.red,style: StrokeStyle(lineWidth: 30,lineCap: .round,dash: [80]))
//            .background{
//                Text("hhh").foregroundColor(.blue)
 //           }
        
//        Circle().trim(from: 0.1, to: 0.7).stroke(Color.orange,style: StrokeStyle(lineWidth: 20, lineCap: .round, dash: [70]))
        
        Capsule(style: .circular).frame(width: 200.0, height: 100)
            
//            .frame(width: 300,height: 300,alignment: .center)
//            .foregroundColor(.red)
    }
}

struct SwiftUICircle_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUICircle()
    }
}
