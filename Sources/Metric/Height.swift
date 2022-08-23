// Copyright © Fleuronic LLC. All rights reserved.

import struct CoreGraphics.CGFloat

public struct Height {
	public let value: CGFloat
}

// MARK: -
extension Height: ExpressibleByIntegerLiteral {
	public init(integerLiteral: IntegerLiteralType) {
		value = .init(integerLiteral)
	}
}
