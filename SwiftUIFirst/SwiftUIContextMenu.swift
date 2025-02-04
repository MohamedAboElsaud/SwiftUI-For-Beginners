//
//  SwiftUIContextMenu.swift
//  SwiftUIFirst
//
//  Created by mohamed ahmed on 04/02/2025.
//

import SwiftUI

struct SwiftUIContextMenu: View {
    @State var backgroundColor: Color = .purple
    var body: some View {
        VStack(alignment: .leading, spacing: 10.0){
            Image(systemName: "house.fill")
                .font(.title)
            Text("hello world!")
                .font(.headline)
            Text("Mohamed ios engineer")
                .font(.subheadline)
        }
        .foregroundColor(.white)
        .padding(30)
        .background(backgroundColor.cornerRadius(30))
        .contextMenu(menuItems: {
            Button {
                backgroundColor = .yellow
            } label: {
                Label("share", systemImage:"flame.fill")
                
            }
            Button {
                backgroundColor = .red
            } label: {
                Text("report")
            }
            Button {
                backgroundColor = .green
            } label: {
                HStack{
                    Text("like this")
                    Image(systemName: "heart.fill")
                }
            }
            
        })
    }
}

struct SwiftUIContextMenu_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIContextMenu()
    }
}
