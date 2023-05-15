// Copyright © Fleuronic LLC. All rights reserved.

import struct CoreGraphics.CGFloat

public struct Kerning: Named {
	public let value: CGFloat

	public init(value: CGFloat) {
		self.value = value
	}
}

// MARK: -
extension Kerning: ExpressibleByIntegerLiteral {
	public init(integerLiteral: IntegerLiteralType) {
		value = .init(integerLiteral)
	}
}

extension Kerning: ExpressibleByFloatLiteral {
	public init(floatLiteral: FloatLiteralType) {
		value = .init(floatLiteral)
	}
}
