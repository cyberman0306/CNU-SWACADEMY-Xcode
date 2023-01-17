//
//  ContentView.swift
//  caffeineHolic_test2
//
//  Created by cnu on 2023/01/17.
//

import SwiftUI

struct ContentView: View {
    @State private var dailyList = ["First", "Second"]
    @State var result:Bool = true
    @State var caffeine:CaffeineModel = CaffeineModel()
    
    func incCoffee() {
        //dailyList.insert("Get Some Coffee", at: 0)
        (result, dailyList) = caffeine.doWakening()
    }
    
    func incStress() {
        //dailyList.insert("Stress Up", at: 0)
        (result, dailyList) = caffeine.doStress()
    }
    
    func getRest() {
        //dailyList.insert("REST", at: 0)
        (result, dailyList) = caffeine.doRest()
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
                Button("Top button") {
                    print("Top Button Click")
                    (result, dailyList) = caffeine.doReset()
                }
                .padding()
            }
            
            Spacer()
            Image(caffeine.getStateImg())
                .resizable()
                .frame(width: caffeine.imgFrame.width,
                       height: caffeine.imgFrame.height)
            
            Button("Get Stress") {
                incStress()
            }
            .padding()
            
            Button("Go to Caffeine") {
                incCoffee()
            }
            .padding()
            
            Button("Get Some Rest") {
                getRest()
            }
            .padding()
            
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
