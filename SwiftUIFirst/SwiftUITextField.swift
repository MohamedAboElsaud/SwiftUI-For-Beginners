//
//  SwiftUITextField.swift
//  SwiftUIFirst
//
//  Created by mohamed ahmed on 04/02/2025.
//

import SwiftUI

struct SwiftUITextField: View {
    @State var textFieldText = ""
    @State var dateArray: [String] = []
    var body: some View {
        NavigationView{
            VStack{
                TextField("write youe words", text: $textFieldText)
                    .padding()
                    .background(Color.gray.opacity(0.3).cornerRadius(10))
                    .foregroundColor(.red)
                    .font(.headline)
                Button( action: {
                    if textisappropriate(){
                        saveText()
                    }
                }, label: {
                    Text("save".uppercased())
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(textisappropriate() ? Color.blue : Color.gray)
                        .cornerRadius(10)
                        .foregroundColor(.white)
                        .font(.headline)
                }
                ).disabled(!textisappropriate())

                ForEach(dateArray,id: \.self){ data in
                    Text(data)
                }
                Spacer()
            }
            .padding()
            .navigationTitle("mohamed")
            
        }
        
    }
    
    func textisappropriate() -> Bool{
        return textFieldText.count > 3
    }
    func saveText(){
        dateArray.append(textFieldText)
        textFieldText = ""
    }
}

struct SwiftUITextField_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUITextField()
    }
}
