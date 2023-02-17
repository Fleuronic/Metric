// Copyright © Fleuronic LLC. All rights reserved.

import struct CoreGraphics.CGFloat

public struct Kerning {
	public let value: CGFloat

	public init(value: CGFloat) {
		self.value = value
	}
}

// MARK: -
extension Kerning: ExpressibleByFloatLiteral {
	public init(floatLiteral: FloatLiteralType) {
		value = .init(floatLiteral)
	}
}