// Copyright © Fleuronic LLC. All rights reserved.

import struct UIKit.CGFloat
import class UIKit.UIView

public struct Opacity {
	public let value: CGFloat
}

// MARK: -
public extension Opacity {
	static let full: Self = 1
}

// MARK: -
extension Opacity: ExpressibleByIntegerLiteral {
	public init(integerLiteral: IntegerLiteralType) {
		value = .init(integerLiteral)
	}
}

extension Opacity: ExpressibleByFloatLiteral {
	public init(floatLiteral: FloatLiteralType) {
		value = .init(floatLiteral)
	}
}

// MARK: -
public extension UIView {
	var opacity: Opacity {
		get { .init(value: alpha) }
		set { alpha = newValue.value }
	}
}
