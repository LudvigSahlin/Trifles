import UIKit

public class Trifles {

    public class TextField {

        /// Adds subviews, delegate and basic styling. Sets no constraints.
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

        /// Adds subviews and basic styling. Sets no constraints.
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
