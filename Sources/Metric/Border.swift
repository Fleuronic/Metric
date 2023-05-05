// Copyright © Fleuronic LLC. All rights reserved.

import struct CoreGraphics.CGFloat

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
public extension Styled {
	func borderWidth(width: (Border.Width.Type) -> Border.Width) -> Self {
		base.layer.borderWidth = width(Border.Width.self).value
		return self
	}
}
