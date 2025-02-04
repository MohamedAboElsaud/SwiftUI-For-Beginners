//
//  SwiftUIActionSheet.swift
//  SwiftUIFirst
//
//  Created by mohamed ahmed on 04/02/2025.
//

import SwiftUI

struct SwiftUIActionSheet: View {
    
    @State var showsheet = false
    @State var actionSheetoptions:actionSheetOption = .isOtherPost
    enum actionSheetOption {
        case isMyPost
        case isOtherPost
    }
    var body: some View {
        
        Button("kk"){
            actionSheetoptions = .isMyPost
            showsheet.toggle()
            
        }
        .actionSheet(isPresented: $showsheet, content: getActionSheet)
        
    }
    
    func getActionSheet() -> ActionSheet{
        let shareButton: ActionSheet.Button = .default(Text("share")){
            
        }
        let reportButton: ActionSheet.Button = .default(Text("report")){
            
        }
        let deleteButton: ActionSheet.Button = .default(Text("delete")){
            
        }
        let cancelButton: ActionSheet.Button = .cancel(){
            
        }
        switch actionSheetoptions{
        case .isMyPost:
            return ActionSheet(
                title: Text("sheets"),
                message: nil,
                buttons: [shareButton,reportButton,cancelButton]
            )
        case  .isOtherPost:
            return ActionSheet(
                title: Text("sheets2"),
                message: nil,
                buttons: [reportButton,cancelButton]
            )
        }
    }
}
struct SwiftUIActionSheet_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIActionSheet()
    }
}
