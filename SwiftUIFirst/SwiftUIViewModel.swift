//
//  SwiftUIViewModel.swift
//  SwiftUIFirst
//
//  Created by mohamed ahmed on 08/02/2025.
//

import SwiftUI

struct FruitModel: Identifiable{
    let id = UUID().uuidString
    let name:String
    let count: Int
}

class FruitViewModel: ObservableObject{
    
    @Published var fruitsArray: [FruitModel] = []
    @Published var isLoading = false
    
    init(){
        getFruits()
    }
    func getFruits(){
        let fruits1 = FruitModel(name: "fruit1", count: 5)
        let fruits2 = FruitModel(name: "fruit2", count: 3)
        
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 3){
            self.fruitsArray.append(fruits1)
            self.fruitsArray.append(fruits2)
            self.isLoading = false
        }
    }
    func deleteFruit(fruit: IndexSet){
        fruitsArray.remove(atOffsets: fruit)
    }
}
struct SwiftUIViewModel: View {
    
    @StateObject var fruitViewModel = FruitViewModel()
    var body: some View {
        NavigationView {
            List{
                if (fruitViewModel.isLoading){
                    
                    ProgressView()
                }else{
                    ForEach(fruitViewModel.fruitsArray) { fruit in
                        HStack{
                            Text("\(fruit.count)")
                                .foregroundColor(.red)
                            Text("\(fruit.name)")
                                .font(.headline)
                                .bold()
                        }
                        
                    }
                    
                    .onDelete(perform: fruitViewModel.deleteFruit)
                }
                
            }
            .navigationTitle("Fruit list")
            .listStyle(GroupedListStyle())
            .navigationBarItems(trailing: NavigationLink(destination: RandomScreen( fruitViewModel: fruitViewModel), label: {
                Image(systemName: "heart")
            }))
            
            
        }
    }
    
    
}

struct RandomScreen: View{
    @Environment(\.presentationMode) var presentationMode
    @ObservedObject var fruitViewModel:FruitViewModel
    
    var body: some View{
        ZStack{
            Color.green.edgesIgnoringSafeArea(.all)
            VStack{
                ForEach(fruitViewModel.fruitsArray) {
                    fruit in
                    Text(fruit.name)
                }
            }
        }
    }
}

struct SwiftUIViewModel_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIViewModel()
    }
}
