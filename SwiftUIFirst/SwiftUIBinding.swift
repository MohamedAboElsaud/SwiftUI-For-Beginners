//
//  SwiftUIBinding.swift
//  SwiftUIFirst
//
//  Created by mohamed ahmed on 03/02/2025.
//

import SwiftUI

struct SwiftUIBinding: View {
    @State var backgroundColor = Color.orange
    @State var title = "title"
    var body: some View {
        ZStack{
            
            backgroundColor
                .edgesIgnoringSafeArea(.all)
            
            VStack{
                
                Text(title)
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    
                
                ButtonView(backgroundColor: $backgroundColor,title: $title)
            }


        }
    }
}

struct SwiftUIBinding_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIBinding()
    }
}

struct ButtonView: View{
    @Binding var backgroundColor : Color
    @Binding var title:String
    var body: some View{
        Button {
            backgroundColor = .red
            title = "title changed"
        } label: {
            Text("change")
                .padding()
                .padding(.horizontal)
                .background(.gray)
                .cornerRadius(10)
        }
    }
}
