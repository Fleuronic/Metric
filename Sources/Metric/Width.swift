// Copyright © Fleuronic LLC. All rights reserved.

import struct CoreGraphics.CGFloat

public struct Width {
	public let value: CGFloat
}

// MARK: -
extension Width: ExpressibleByIntegerLiteral {
	public init(integerLiteral: IntegerLiteralType) {
		value = .init(integerLiteral)
	}
}
