//
//  RNPulsatorViewController.swift
//  RNPReactNativePulsator
//
//  Created by Cüneyt Aliustaoğlu on 14/01/20.
//  Copyright © 2020 Facebook. All rights reserved.
//

import Foundation

@objc(RNPulsatorViewController)
class RNPulsatorViewController: RCTViewManager {
    var pulsatorView: RNPulsatorView!
    
    override func view() -> UIView? {
        pulsatorView = RNPulsatorView()
        return pulsatorView
    }
    

}
