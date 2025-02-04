//
//  SwiftUIPicker.swift
//  SwiftUIFirst
//
//  Created by mohamed ahmed on 04/02/2025.
//

import SwiftUI

struct SwiftUIPicker: View {
    
    @State var selection = "most recent"
    let filterOption:[String] = [
        "Most recent","Most liked","most populer"
    ]
    init(){
        UISegmentedControl.appearance().selectedSegmentTintColor = .red
        let attribute : [NSAttributedString.Key:Any] =
        [
            .foregroundColor: UIColor.white
        ]
        UISegmentedControl.appearance().setTitleTextAttributes(attribute, for: .selected)
    }
    var body: some View {
        
        Picker(
            selection: $selection,
            label:
                HStack{
                    Text("filter")
                    Text(selection)
                }
                .font(.headline)
                .foregroundColor(.white)
                .padding()
                .padding(.horizontal)
                .background(.blue)
                .cornerRadius(10)
                .shadow(color: .blue.opacity(0.3), radius: 10,y:10)
            ,content:
                {
                    ForEach(filterOption,id: \.self){option in
                        HStack{
                            Text(option)
                            Image(systemName: "heart.fill")
                        }
                        .tag(option)
                    }
                })
        .pickerStyle(MenuPickerStyle())
        
        
        
        
        //        Picker(selection: $selection, label: Text("picker")) {
        //            ForEach(filterOption.indices){
        //                index in
        //                Text(filterOption[index]).tag(filterOption[index])
        //            }
        //        }
        //        .pickerStyle(SegmentedPickerStyle())
        
    } }


struct SwiftUIPicker_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIPicker()
    }
}
