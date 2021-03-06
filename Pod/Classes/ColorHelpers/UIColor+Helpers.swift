//
//  UIColor+Helpers.swift
//  Swiftilities
//
//  Created by Michael Skiba on 11/14/16.
//  Copyright © 2016 Raizlabs. All rights reserved.
//

import UIKit

public extension UIColor {

    public convenience init(hex: UInt32, alpha: CGFloat = 1.0) {
        let r = UInt8((hex & 0xFF0000) >> 16)
        let g = UInt8((hex & 0xFF00) >> 8)
        let b = UInt8(hex & 0xFF)
        self.init(red8: r, green8: g, blue8: b, alpha: alpha)
    }

    public convenience init(rgba: UInt32) {
        let r = UInt8((rgba & 0xFF000000) >> 24)
        let g = UInt8((rgba & 0xFF0000) >> 16)
        let b = UInt8((rgba & 0xFF00) >> 8)
        let a = UInt8(rgba & 0xFF)
        self.init(red8: r, green8: g, blue8: b, alpha: CGFloat(a) / 255)
    }

    public convenience init(red8: UInt8, green8: UInt8, blue8: UInt8, alpha: CGFloat = 1.0) {
        self.init(red: CGFloat(red8) / 255.0, green: CGFloat(green8) / 255.0, blue: CGFloat(blue8) / 255.0, alpha: alpha)
    }

}
