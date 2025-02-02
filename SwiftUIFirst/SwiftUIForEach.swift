//
//  SwiftUIForEach.swift
//  SwiftUIFirst
//
//  Created by mohamed ahmed on 02/02/2025.
//

import SwiftUI

struct SwiftUIForEach: View {
    
    let data = ["a","b","c"]
    var body: some View {
        
        VStack{
            ForEach(data.indices){ index in
                Text("\(index)")
                    .font(.largeTitle)
                
            }
        }
    }
}

struct SwiftUIForEach_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIForEach()
    }
}
