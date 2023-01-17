//
//  CaffineModel.swift
//  caffeineHolic_test2
//
//  Created by cnu on 2023/01/17.
//

import Foundation

class CaffeineModel {
    enum CaffeineState: String {
        case Intro
        case Wakening
        case Stressful
        case Rest
    }
    
    let originList = ["First", "Second"]
    var dailyList:[String] = []
    var currentState:CaffeineState = CaffeineState.Intro
    var imgFrame:CGSize = CGSize(width: 200.0, height: 200.0)
    
    private func changeState(newState:CaffeineState) -> (Bool, [String]) {
        var result:Bool = false
        //var currentState:CaffeineState = CaffeineState.Intro
        addDailyList(state: newState)
        
        if newState != self.currentState {
            result = true
            self.currentState = newState
            resetImgSize()
        }
        
        else {
            incImgSize()
        }
        
        return (result, dailyList)
    }
    
    private func addDailyList(state:CaffeineState) {
        switch(state) {
        case .Stressful: dailyList.insert("Stress Up", at: 0)
        case .Wakening: dailyList.insert("Get Some Coffee", at: 0)
        case .Intro: dailyList.insert("New", at: 0)
        case .Rest: dailyList.insert("REST", at: 0)
        }
    }
    
    func resetImgSize() {
        var newFrame:CGSize = imgFrame
        newFrame.height = 200.0
        newFrame.width = 200.0
        imgFrame = newFrame
    }
    
    func incImgSize() {
        var newFrame:CGSize = imgFrame
        newFrame.height += 10
        newFrame.width += 10
        imgFrame = newFrame
    }
    
    func getStateImg () -> String {
        return "Profile." + currentState.rawValue
        
    }
    
    func doReset() ->(Bool, [String]) {
        if currentState == .Intro {
            return (false, dailyList)
        }
        return changeState(newState: .Intro)
    }
    
    func doWakening() -> (Bool, [String]) {
        //self.currentState = CaffeineState.Wakening
        return changeState(newState: .Wakening)
    }
    
    func doStress() -> (Bool, [String]) {
        //self.currentState = CaffeineState.Stressful
        return changeState(newState: .Stressful)
        
    }
    
    func doRest() -> (Bool, [String]) {
        self.currentState = CaffeineState.Rest
        return changeState(newState: .Rest)
    }
    

    
}
