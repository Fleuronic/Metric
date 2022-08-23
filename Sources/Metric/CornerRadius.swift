// Copyright © Fleuronic LLC. All rights reserved.

import struct UIKit.CGFloat
import class UIKit.UIView
import class UIKit.UIButton

public enum Corner {}

// MARK: -
public extension Corner {
	struct Radius {
		public let value: CGFloat
	}
}

// MARK: -
public extension Corner.Radius {
	static let `default`: Self = 5
}

// MARK: -
extension Corner.Radius: ExpressibleByIntegerLiteral {
	public init(integerLiteral: IntegerLiteralType) {
		value = .init(integerLiteral)
	}
}

// MARK: -
public extension UIView {
	var cornerRadius: Corner.Radius? {
		get {
			if let button = self as? UIButton {
				return (button.configuration?.background.cornerRadius).map(Corner.Radius.init)
			}
			return .init(value: layer.cornerRadius)
		}
		set {
			guard let value = newValue?.value else { return }

			if let button = self as? UIButton {
				button.configuration?.background.cornerRadius = value
			} else {
				layer.cornerRadius = value
			}
		}
	}
}
