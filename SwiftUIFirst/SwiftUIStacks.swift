//
//  SwiftUIStacks.swift
//  SwiftUIFirst
//
//  Created by mohamed ahmed on 01/02/2025.
//

import SwiftUI

struct SwiftUIStacks: View {
    var body: some View {
        ZStack{
            
            Rectangle()
                .fill(.yellow)
                .frame(width: 300, height: 500)
            
            VStack(alignment: .center){
                Rectangle()
                    .fill(.red)
                    .frame(width: 200,height: 200)
                
                Rectangle()
                    .fill(.green)
                    .frame(width: 150,height: 150)
                
                HStack{
                    Rectangle()
                        .fill(.orange)
                        .frame(width: 100,height: 100)
                    Rectangle()
                        .fill(.blue)
                        .frame(width: 100, height: 100)
                }
            }
            .background(.black)
        }
        
    }
}

struct SwiftUIStacks_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIStacks()
    }
}
