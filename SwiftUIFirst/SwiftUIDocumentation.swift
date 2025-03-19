//
//  SwiftUIDocumentation.swift
//  SwiftUIFirst
//
//  Created by mohamed ahmed on 06/02/2025.
//

import SwiftUI

struct SwiftUIDocumentation: View {
    @State var names = ["aaa","bbb","ccc"]
    @State var showAlert = false
    @State var count = 0
    //MARK: body
    
    /*
     
     */
    var body: some View {
        
        NavigationView {
            ZStack{
                // background
                Color.red.opacity(0.3).edgesIgnoringSafeArea(.all)
                
                //foreground
                foregroundLayer
                
                
                .navigationBarItems(trailing: Button("add", action: {
                    showAlert.toggle()
                }))
                .navigationTitle("Documentation:\(count)")
                .alert(isPresented: $showAlert) {
                    alertaction(mes: "hhhhh")
                }
            }}
    }
    ///This is foreground Layer that hold scrollview
    private var foregroundLayer:some View{
        ScrollView{
            LazyVStack{
                Text("Hello")
                ForEach(names, id: \.self) { name in
                    Text(name)
                        .font(.title)
                }
                ForEach(1..<50) { _ in
                    RoundedRectangle(cornerRadius: 10)
                        .frame(height: 200)
                        .padding()
                        .onAppear{
                            count += 1
                        }
                }
                
            }
            
        }
    }
    
    //MARK: Func
    
    /// Get alert with specified title
    /// - Parameter mes: title for alert
    /// 
    /// - Returns: Alert with title
    func alertaction(mes: String)->Alert{
        return Alert(title: Text(mes))
    }
}
//MARK: preview
struct SwiftUIDocumentation_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIDocumentation()
    }
}
