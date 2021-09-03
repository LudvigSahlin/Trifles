// Copyright 2021 Ludvig Sahlin
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//    http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

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
