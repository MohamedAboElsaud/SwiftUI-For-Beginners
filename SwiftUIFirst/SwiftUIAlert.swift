//
//  SwiftUIAlert.swift
//  SwiftUIFirst
//
//  Created by mohamed ahmed on 04/02/2025.
//

import SwiftUI

struct SwiftUIAlert: View {
    @State var showAlert = false
    @State var alertType:MyAlerts? = nil
    @State var backgroundColor:Color = .green
    enum MyAlerts{
        case succes
        case error
    }
    
    var body: some View {
        ZStack{
            backgroundColor
                .edgesIgnoringSafeArea(.all)
            VStack{
                Button("B suc"){
                    alertType = .succes
                    showAlert.toggle()
                }
                Button("B fail"){
                    alertType = .error
                    
                    showAlert.toggle()
                }
            }
            .alert(isPresented: $showAlert) {
                getAlert()
            }
        }
    }
    
    func getAlert() ->Alert{
        
        switch alertType{
        case .error:
            return Alert(title: Text("there is error"))
        case .succes:
            return Alert(title: Text("succes"),message:nil, dismissButton: .default(Text("ok"),action: {
                backgroundColor = .red
            }))
        default:
            return Alert(title: Text("error"))
        }
    }
}

struct SwiftUIAlert_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIAlert()
    }
}
