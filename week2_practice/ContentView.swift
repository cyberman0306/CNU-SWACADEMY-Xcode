//
//  ContentView.swift
//  week2_practice
//
//  Created by cnu on 2023/01/11.
//

import SwiftUI

struct Friend {
    let name: String
    let pet: MyPet?
}

enum MyPet {
    case cat(String)
    case dog(String)
    
}


struct ContentView: View {
    var pepe: Friend = Friend(name: "pepe", pet: MyPet.cat("coco"))
    var mimi: Friend = Friend(name: "mimi", pet: MyPet.cat("titi2"))
    
    @State var pet: String = " 제 절친의 애완동물은요?"
    
    var body: some View {
        VStack {
            Text(pet)
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
