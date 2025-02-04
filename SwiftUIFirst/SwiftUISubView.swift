//
//  SwiftUISubView.swift
//  SwiftUIFirst
//
//  Created by mohamed ahmed on 03/02/2025.
//

import SwiftUI

struct SwiftUISubView: View {
    var body: some View {
        
        ZStack{
            Color.orange
                .edgesIgnoringSafeArea(.all)
            contentlayer

        }
    }
    var contentlayer: some View{
        HStack{
            MyView(title: "purple", count: 1, color: .purple)
            MyView(title: "gray", count: 2, color: .gray)
            MyView(title: "blue", count: 3, color: .blue)
        }
    }
}

struct SwiftUISubView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUISubView()
    }
}

struct MyView: View {
    
    let title:String
    let count:Int
    let color:Color
    var body: some View {
        VStack{
            Text("\(count)")
            Text(title)
        }
        .padding()
        .background(color)
        .cornerRadius(10)
    }
}
