//
//  SwiftUIAnimations.swift
//  SwiftUIFirst
//
//  Created by mohamed ahmed on 03/02/2025.
//

import SwiftUI

struct SwiftUIAnimations: View {
    @State var isAnimating = false
    var body: some View {
        VStack{
            Button("change"){
                isAnimating.toggle()
            }
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimating ? 350 : 50 ,height: 100)
                .animation(Animation.linear)
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimating ? 350 : 50 ,height: 100)
                .animation(Animation.easeOut)
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimating ? 350 : 50 ,height: 100)
                .animation(Animation.easeIn)
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimating ? 350 : 50 ,height: 100)
                .animation(Animation.easeInOut)
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimating ? 350 : 50 ,height: 100)
                .animation(Animation.spring(response: 1.5, dampingFraction: 0.1, blendDuration: 1))
        }
    }
}

struct SwiftUIAnimations_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIAnimations()
    }
}
