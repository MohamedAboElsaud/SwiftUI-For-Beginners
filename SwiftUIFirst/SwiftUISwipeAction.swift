//
//  SwiftUISwipeAction.swift
//  SwiftUIFirst
//
//  Created by mohamed ahmed on 08/02/2025.
//

import SwiftUI

struct SwiftUISwipeAction: View {
    @State var names = ["aa","bb"]
    var body: some View {
        List{
            ForEach(names, id: \.self) {
                Text($0.capitalized)
                    .swipeActions(edge: .trailing, allowsFullSwipe: true) {
                        Button("delete"){
                            
                        }
                        .tint(.red)
                        Button("save"){
                            
                        }
                        .tint(.blue)
                        Button("archeve"){
                            
                        }
                        .tint(.green)
                    }
                    .swipeActions(edge: .leading, allowsFullSwipe: true) {
                        Button("save"){
                            
                        }
                        .tint(.blue.opacity(0.3))
                    }
            }
        }
    }
}

struct SwiftUISwipeAction_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUISwipeAction()
    }
}
