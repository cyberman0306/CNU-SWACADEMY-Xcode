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
    
    var currentState:CaffeineState = CaffeineState.Intro
    var imgFrame:CGSize = CGSize(width: 200.0, height: 200.0)
    
    func incImgSize() {
        var newFrame:CGSize = imgFrame
        newFrame.height += 10
        newFrame.width += 10
        imgFrame = newFrame
    }
    
    func getStateImg () -> String {
        return "Profile." + currentState.rawValue
    }
    
    func doWakening() {
        self.currentState = CaffeineState.Wakening
    }
    
    func doStress() {
        self.currentState = CaffeineState.Stressful
    }
    
    func doRest() {
        self.currentState = CaffeineState.Rest
    }
    

    
}
