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
    var pepe: Friend = Friend(name: "pepe", pet: MyPet.dog("coco"))
    var mimi: Friend = Friend(name: "mimi", pet: MyPet.cat("titi"))
    
    @State var pet: String = " 제 절친의 애완동물은요?"
    
    var body: some View {
        VStack {
            Text(pet)
            Button {
                if let petName = mimi.pet {
                    pet = getPetName(petName)
                } else {
                    pet = "애완동물이 없습니다"
                }
            } label: {
                Text("Push")
            }
        }
    }
    
    
    func getPetName(_ petName: MyPet) -> String {
        switch petName {
        case .dog(let nickName):
            return nickName
        case .cat(let nickName):
            return nickName
        }
    }
    
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
