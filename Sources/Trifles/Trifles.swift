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

import UIKit

public class Trifles {

    public class TextField {

        /// Adds subviews and sets basic styling. Sets no constraints.
        public static func build() -> (containerView: UIView, backgroundView: UIView, textField: UITextField, headerLabel: UILabel, xImageView: UIImageView, xBackgroundView: UIView) {
            let containerView = UIView()

            let backgroundView = UIView()
            backgroundView.backgroundColor = .secondarySystemBackground
            backgroundView.applyCardTraits()
            containerView.addSubview(backgroundView)

            let textField = UITextField()
            textField.textColor = .label
            textField.returnKeyType = .next
            textField.spellCheckingType = .no
            textField.smartDashesType = .no
            textField.smartQuotesType = .no
            containerView.addSubview(textField)

            let headerLabel = UILabel()
            headerLabel.textColor = .label
            containerView.addSubview(headerLabel)

            let xImageView = UIImageView()
            xImageView.image = UIImage(systemName: "xmark.circle.fill")
            xImageView.tintColor = .systemGray4
            xImageView.applyBorders(color: .clear)
            xImageView.isHidden = true
            containerView.addSubview(xImageView)

            let xBackgroundView = UIView()
            containerView.addSubview(xBackgroundView)

            return (containerView, backgroundView, textField, headerLabel, xImageView, xBackgroundView)
        }
    }

    public class Button {

        /// Adds subviews and sets basic styling. Sets no constraints.
        public static func build() -> (containerView: UIView, backgroundView: UIView, label: UILabel) {
            let containerView = UIView()

            let backgroundView = UIView()
            backgroundView.backgroundColor = .secondarySystemBackground
            backgroundView.applyBorders(color: .clear)
            containerView.addSubview(backgroundView)

            let label = UILabel()
            label.textAlignment = .center
            label.textColor = .label
            containerView.addSubview(label)

            return (containerView, backgroundView, label)
        }
    }
}
