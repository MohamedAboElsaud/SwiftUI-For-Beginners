//
//  SwiftUIFocusState.swift
//  SwiftUIFirst
//
//  Created by mohamed ahmed on 10/02/2025.
//

import SwiftUI

struct SwiftUIFocusState: View {
    
    enum OnBoardingFields: Hashable{
        case username
        case password
    }
    @State private var username = ""
    @State private var password = ""
    @FocusState private var FieldInFocus: OnBoardingFields?
    

    var body: some View {
        VStack{
            TextField("enter your name", text: $username)
                .focused($FieldInFocus, equals: .username)
                .padding()
                .background(.gray.opacity(0.2))
                .cornerRadius(10)
                .submitLabel(.continue)
                .onSubmit {
                    print("username writed")
                }
            TextField("enter your name", text: $password)
                .focused($FieldInFocus, equals: .password)
                .padding()
                .background(.gray.opacity(0.2))
                .cornerRadius(10)
            
            
            Button("SIGN UP 🚀"){
                if !password.isEmpty && !username.isEmpty{
                    print("SIGN UP RIGHT NOW")
                }else if !username.isEmpty{
                    FieldInFocus = .password
                }else{
                    FieldInFocus = .username
                }
            }
        }
    }
}

struct SwiftUIFocusState_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIFocusState()
    }
}
