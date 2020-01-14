//
//  RNPulsatorView.swift
//  RNPReactNativePulsator
//
//  Created by Cüneyt Aliustaoğlu on 14/01/20.
//  Copyright © 2020 Facebook. All rights reserved.
//

import Foundation
import Pulsator

class RNPulsatorView: UIView {
    init() {
        super.init(frame: CGRect())
        self.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        self.autoresizesSubviews = true
    }
    
    override func didMoveToWindow() {
        
    }
    
    override func layoutSubviews() {
        let pulsator = Pulsator()
        let subview = self.subviews[0]
        let x = subview.frame.size.width/2
        let y = subview.frame.size.height/2
        pulsator.position = CGPoint(x: x, y: y)
        pulsator.backgroundColor = hexStringToUIColor(hex: "#342341").cgColor
        subview.layer.addSublayer(pulsator)
        pulsator.start()
    }
    

    func hexStringToUIColor (hex:String) -> UIColor {
        var cString:String = hex.trimmingCharacters(in: .whitespacesAndNewlines).uppercased()

        if (cString.hasPrefix("#")) {
            cString.remove(at: cString.startIndex)
        }

        if ((cString.count) != 6) {
            return UIColor.gray
        }

        var rgbValue:UInt64 = 0
        Scanner(string: cString).scanHexInt64(&rgbValue)

        return UIColor(
            red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
            green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
            blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
            alpha: CGFloat(1.0)
        )
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
