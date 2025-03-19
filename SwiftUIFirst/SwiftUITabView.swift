//
//  SwiftUITabView.swift
//  SwiftUIFirst
//
//  Created by mohamed ahmed on 05/02/2025.
//

import SwiftUI

struct SwiftUITabView: View {
    @State var selectedTab = 0
    var body: some View {
        TabView(selection: $selectedTab){
            
            ExtractedView(selectedTab: $selectedTab)
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("home")
                }
                .tag(0)
            Text("1")
                .tabItem {
                    Image(systemName: "globe")
                    Text("browse")
                }.tag(1)
            
            Text("2")
                .tabItem {
                    Image(systemName: "person.fill")
                    Text("profile")
                }.tag(2)
        }
        .accentColor(.red)
    }
}

struct SwiftUITabView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUITabView()
    }
}

struct ExtractedView: View {
    @Binding var selectedTab: Int
    var body: some View {
        VStack{
            Text("go to second tab")
            Button {
                selectedTab = 1
            } label: {
                Text("go")
                    .font(.largeTitle)
                    .padding()
                    .background(.purple)
                    .cornerRadius(10)
            }
            
        }
    }
}
