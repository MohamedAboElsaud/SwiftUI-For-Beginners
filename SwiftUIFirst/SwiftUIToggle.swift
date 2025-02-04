//
//  SwiftUIToggle.swift
//  SwiftUIFirst
//
//  Created by mohamed ahmed on 04/02/2025.
//

import SwiftUI

struct SwiftUIToggle: View {
    @State var togglechanges = false
    var body: some View {
        VStack{
            Text(togglechanges ? "online" : "offline" )
                .font(.largeTitle)
            
            Toggle(
                isOn: $togglechanges) {
                    Text("change status")
                }
                .toggleStyle(SwitchToggleStyle(tint: Color.red))
        }
        
    }
}

struct SwiftUIToggle_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIToggle()
    }
}
