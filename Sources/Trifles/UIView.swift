//
//  UIView.swift
//  
//
//  Created by Ludvig Hemma on 2021-07-21.
//

import Foundation
import UIKit

public extension UIView {
    func applyBorders(color: UIColor, borderWidth: CGFloat = 1, cornerRadius: CGFloat = 4) {
        layer.borderColor = color.cgColor
        layer.borderWidth = borderWidth
        layer.cornerRadius = cornerRadius
    }
    func applyShadow(opacity: Float = 0.4, offsetX: CGFloat = 0, offsetY: CGFloat = 2, shadowRadius: CGFloat = 2) {
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOpacity = opacity
        layer.shadowOffset = CGSize(width: offsetX, height: offsetY)
        layer.shadowRadius = shadowRadius
    }
    func applyCardTraits(cornerRadius: CGFloat = 4) {
        layer.cornerRadius = cornerRadius
        applyShadow()
    }
}
