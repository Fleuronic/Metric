// Copyright © Fleuronic LLC. All rights reserved.

import struct UIKit.CGFloat
import class UIKit.UIView
import class UIKit.UITextField

public enum Border {}

// MARK: -
public extension Border {
	struct Width {
		public let value: CGFloat
	}
}

// MARK: -
extension Border.Width: ExpressibleByIntegerLiteral {
	public init(integerLiteral: IntegerLiteralType) {
		value = .init(integerLiteral)
	}
}

// MARK: -
public extension UIView {
	var borderWidth: Border.Width {
		get { .init(value: layer.borderWidth) }
		set { layer.borderWidth = newValue.value }
	}
}
