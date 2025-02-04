//
//  SwiftUITransition.swift
//  SwiftUIFirst
//
//  Created by mohamed ahmed on 03/02/2025.
//

import SwiftUI

struct SwiftUITransition: View {
    @State var showView = false
    var body: some View {
        ZStack{
            VStack {
                Button("ok"){
                    showView.toggle()
                }
                Spacer()
            }
                
            if showView{
                RoundedRectangle(cornerRadius: 30)
                    .frame(height: UIScreen.main.bounds.height * 0.5)
//                    .transition(AnyTransition.scale.animation(.easeInOut))
                    
                    .transition(.asymmetric(insertion: .move(edge: .leading), removal: .move(edge: .bottom)))
                    .animation(.easeInOut)
                
//                    .animation(.spring())
            }
        }
        .edgesIgnoringSafeArea(.bottom)
    }
}

struct SwiftUITransition_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUITransition()
    }
}
