//
//  ContentView.swift
//  ArrayList
//
//  Created by Augustin Diabira on 17/10/2021.
//

import SwiftUI


struct ContentView: View {
    @State var array = ["Mango", "Tango", "Dango", "Ringo", "Django", "Cool"]
    var body: some View{
            
            VStack {
                List (array, id: \.self) { arrayElement in
       
                    Text(arrayElement)
                    
                    
                }
                
                Button(action: {
                    self.array.append(array[Int.random(in: 0...5)])
                }, label: {
                    Text("Add randomWord")
                })
                
            }
        
        
        
        
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

