//
//  SwiftUISheets.swift
//  SwiftUIFirst
//
//  Created by mohamed ahmed on 03/02/2025.
//

import SwiftUI

struct SwiftUISheets: View {
    @State var showSheet = false
    var body: some View {
        ZStack{
            Color.gray
                .edgesIgnoringSafeArea(.all)
            Button {
                showSheet.toggle()
            } label: {
                Text("Show")
                    .font(.largeTitle)
                    .foregroundColor(.green)
                    .padding(20)
                    .background(Color.white.cornerRadius(10))
            }
            .sheet(isPresented: $showSheet) {
                SecondScreen()
            }
            
        }
    }
}

struct SwiftUISheets_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUISheets()
    }
}
struct SecondScreen : View{
    @Environment(\.presentationMode) var presentationMode
    var body: some View{
        ZStack{
            Color.red
                .edgesIgnoringSafeArea(.all)
            
            Button {
                presentationMode.wrappedValue.dismiss()
            } label: {
                Image(systemName: "xmark")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    .padding(20)
                
            }
            
        }
        
    }
}
