// Copyright © Fleuronic LLC. All rights reserved.

import UIKit

public protocol Text: UIView {
	var textAlignment: NSTextAlignment { get set }
}

// MARK: -
public extension Text {
	func setTextColor(_ color: UIColor) {
		(self as? UILabel)?.textColor = color
		(self as? UITextField)?.textColor = color
		(self as? UITextView)?.textColor = color
	}
}

// MARK: -
public extension Styled where Base: Text {
	var centered: Self {
		self.textAlignment(.center)
	}

	func textColorAsset<TextColor>(_ textColor: @escaping (TextColor.Type) -> UIColor) -> Self {
		let color = textColor(TextColor.self)
		base.setTextColor(color)
		return self
	}
}

// MARK: -
public extension Styled where Base: UILabel {
	var multiline: Self {
		self.numberOfLines(0)
	}
}

// MARK: -
public extension Styled where Base: UITextField {
	func kerning(named name: Kerning.Name) -> Self {
		base.defaultTextAttributes.updateValue(name(Kerning.self).value, forKey: .kern)
		return self
	}
}

// MARK: -
extension UILabel: Text {}

// MARK: -
extension UITextField: Text {}

// MARK: -
extension UITextView: Text {}
