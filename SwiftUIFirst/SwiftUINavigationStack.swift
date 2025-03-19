//
//  SwiftUINavigationStack.swift
//  SwiftUIFirst
//
//  Created by mohamed ahmed on 10/02/2025.
//

import SwiftUI

struct SwiftUINavigationStack: View {
    let fruits = ["aa","bb","cc"]
    var body: some View {
        if #available(iOS 16.0, *) {
            NavigationStack{
                VStack(spacing: 20){
                    ForEach(fruits, id: \.self) { fruit in
                        NavigationLink(value: fruit) {
                            Text(fruit)
                        }
                    }
                }
                .navigationTitle("helkklo")
                .navigationDestination(for: String.self) { value in
                    Text("\(value)")
                }
            }
            
        }
    }
}
struct MYSecondCsress: View{
    let view: Int
    init(view: Int) {
        self.view = view
        print("\(view)")
    }
    var body: some View{
        Text("\(view)")
    }
    
}
struct SwiftUINavigationStack_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUINavigationStack()
    }
}
