//
//  ContentView.swift
//  caffeineHolic_test2
//
//  Created by cnu on 2023/01/17.
//

import SwiftUI

struct ContentView: View {
    @State private var dailyList = ["First", "Second"]
    
    func incList() {
        dailyList.insert("New", at: 0)
    }
    
    var DailyView: some View {
        HStack(alignment: .top) {
            VStack(alignment: .leading, spacing: 20) {
                List(dailyList, id: \.self) { item in
                    Text(item)
                }
                Spacer()
                Text("")
            }
            .frame(width: 200)
            .opacity(0.3)
            Spacer()
        }
        .padding()
    }
    
    var Buttons: some View {
        VStack {
            HStack (spacing: 20) {
                Text("")
                Spacer()
                Text("Top button")
            }
            Spacer()
            Button("Go to Caffeine") {
                print("Click")
                incList()
            }
            Spacer()
            Text("Button")
        }
        .padding()
    }
    

    
    var body: some View {
        ZStack {
            DailyView
            Buttons
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
