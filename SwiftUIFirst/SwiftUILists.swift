//
//  SwiftUILists.swift
//  SwiftUIFirst
//
//  Created by mohamed ahmed on 04/02/2025.
//

import SwiftUI

struct SwiftUILists: View {
    @State var fruits=[
        "a",
        "b",
        "c",
        "d",
        "e",
    ]
    @State var veggies=[
        "va",
        "vb",
        "vc",
        "vd",
        "ve",
    ]
    var body: some View {
        NavigationView {
            List {
                Section(
                    header:
                        HStack{
                            Text("Fruits")
                            Image(systemName: "flame.fill")
                        }
                        .font(.headline)
                        .foregroundColor(.yellow)
                    
                ) {
                    ForEach(fruits, id: \.self){ fruit in
                        Text( fruit.capitalized)
                    }
                    .onDelete(perform: delete)
                    .onMove(perform: move)
                    .listRowBackground(Color.blue.opacity(0.12))
                }
                
                Section(
                    header: Text("veggies")) {
                        ForEach(veggies, id: \.self){ veg in
                            Text( veg.capitalized)
                        }
                    }
                Text("Hello, World!")
            }
            .accentColor(.purple)
            // .listStyle(GroupedListStyle())
            .navigationTitle("fruits".localizedCapitalized)
            .navigationBarItems(leading: EditButton(),trailing: addItem)
        }
        .accentColor(.red)
    }
    
    func delete(IndexSet:IndexSet){
        fruits.remove(atOffsets: IndexSet)
    }
    func move(IndexSet:IndexSet,Int:Int){
        fruits.move(fromOffsets: IndexSet, toOffset: Int)
    }
    
    var addItem: some View{
        Button("Add"){
            
        }
    }
}

struct SwiftUILists_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUILists()
    }
}
