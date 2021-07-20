//
//  UIViewController+DismissesKeyboardOnTap.swift
//  
//
//  Created by Ludvig Hemma on 2021-07-20.
//

import Foundation
import UIKit

public extension UIViewController {
    @objc func onTap(sender: Any) {
        view.endEditing(true)
    }
    func dismissesKeyboardOnTap() {
        let tapRecognizer = UITapGestureRecognizer(target: self, action: #selector(onTap(sender:)))
        tapRecognizer.cancelsTouchesInView = false
        view.addGestureRecognizer(tapRecognizer)
    }
}
