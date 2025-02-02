//
//  SwiftUIScroll.swift
//  SwiftUIFirst
//
//  Created by mohamed ahmed on 02/02/2025.
//

import SwiftUI

struct SwiftUIScroll: View {
    var body: some View {
        
        
        ScrollView{
            LazyVStack{
                ForEach(0..<100){ index in
                    ScrollView(.horizontal,showsIndicators: false){
                        HStack{
                            ForEach(0..<6){ i in
                                RoundedRectangle(cornerRadius: 25.0)
                                    .fill(.white)
                                    .padding()
                                    .shadow(radius: 10)
                                    .frame(width: 200,height: 200)
                            }
                        }
                    }
                }
            }
        }
        
//        ScrollView(.horizontal, showsIndicators: true){
//            HStack{
//                ForEach(0..<50){
//                    index in
//                    Rectangle()
//                        .fill(.secondary)
//                        .frame(width: 300,height: 200)
//                }
//                Rectangle()
//                    .frame(height: 300)
//                Rectangle()
//                    .frame(height: 300)
//                Rectangle()
//                    .frame(height: 300)
//            }
//        }
    }
}

struct SwiftUIScroll_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIScroll()
    }
}
