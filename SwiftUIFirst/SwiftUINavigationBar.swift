//
//  SwiftUINavigationBar.swift
//  SwiftUIFirst
//
//  Created by mohamed ahmed on 04/02/2025.
//

import SwiftUI

struct SwiftUINavigationBar: View {
    var body: some View {
        
        NavigationView{
            ScrollView{
                NavigationLink("hello ", destination: SeconScreen())
                
                Text("Hello, World!")
                Text("Hello, World!")
                Text("Hello, World!")
            }
            
            .navigationTitle("title hello")
            .navigationBarTitleDisplayMode(.automatic)
            // .navigationBarHidden(true)
            .navigationBarItems(
                leading:
                    HStack{
                        Image(systemName: "person.fill")
                        Image(systemName: "flame.fill")
                    },
                trailing:
                    NavigationLink(
                        destination: SeconScreen(),
                        label: {
                            Image(systemName:"gear")
                            
                        })
                    .accentColor(.red)
            )
            
        }}
}

struct SeconScreen : View {
    @Environment(\.presentationMode) var presentationMode
    var body: some View{
        ZStack{
            Color.red.edgesIgnoringSafeArea(.all)
                .navigationTitle("SrcondScreen")
            //  .navigationBarHidden(true)
            VStack{
                Button("back button"){
                    presentationMode.wrappedValue.dismiss()
                }
                NavigationLink("Third Screen",destination: (Text("thirdscrren")))
            }
        }
    }
    
}
struct SwiftUINavigationBar_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUINavigationBar()
    }
}
