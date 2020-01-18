//
//  RNPulsatorViewController.swift
//  RNPReactNativePulsator
//
//  Created by Cüneyt Aliustaoğlu on 14/01/20.
//  Copyright © 2020 Facebook. All rights reserved.
//

import Foundation
import Pulsator

@objc(RNPReactNativePulsator)
class RNPulsatorViewController: RCTViewManager {
    var pulsatorView: RNPulsatorView!
    
    override func view() -> UIView? {
        pulsatorView = RNPulsatorView()
        return pulsatorView
    }
    
    @objc
    func setPulsator(_ isSet:Bool, resolve:RCTPromiseResolveBlock, reject:RCTPromiseRejectBlock){
        let pulsator = pulsatorView.pulsator!
    }
    

}
