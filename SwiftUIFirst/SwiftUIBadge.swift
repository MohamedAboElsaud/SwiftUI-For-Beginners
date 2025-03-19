//
//  SwiftUIBadge.swift
//  SwiftUIFirst
//
//  Created by mohamed ahmed on 08/02/2025.
//

import SwiftUI

struct SwiftUIBadge: View {
    var body: some View {
        TabView{
            Color.red
                .tabItem({
                Image(systemName: "heart")
                Text("heart")
            }).badge(4)
            Color.blue
            
                .tabItem({
                Image(systemName: "heart")
                Text("hart")
            }).badge(4)
            Color.green
                .tabItem({
                Image(systemName: "heart")
                Text("hear")
            }).badge("new friend")
        }
    }
}

struct SwiftUIBadge_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIBadge()
    }
}
