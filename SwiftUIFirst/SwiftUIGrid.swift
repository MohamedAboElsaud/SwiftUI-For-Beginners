//
//  SwiftUIGrid.swift
//  SwiftUIFirst
//
//  Created by mohamed ahmed on 02/02/2025.
//

import SwiftUI

struct SwiftUIGrid: View {
    
    let colums: [GridItem] = [
        GridItem(.flexible(), spacing: nil, alignment: nil),
        GridItem(.flexible(), spacing: nil, alignment: nil),
        GridItem(.flexible(), spacing: nil, alignment: nil),
    ]
    
    var body: some View {
        
        ScrollView {
            
            LazyVGrid(
                columns: colums,
                alignment: .center,
                spacing: nil,
                pinnedViews: [.sectionHeaders]) {
                    
                    Section {
                        ForEach(0..<50){index in
                            Rectangle()
                                .frame(height: 50)
                        }
                    } header: {
                        Text("section 1")
                            .foregroundColor(.white)
                            .font(.title)
                            .background(.blue)
                    }

                    
                 
                }

        }
    }
}

struct SwiftUIGrid_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIGrid()
    }
}
