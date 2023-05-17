// Copyright © Fleuronic LLC. All rights reserved.

import struct CoreGraphics.CGFloat

public enum Border {}

// MARK: -
public extension Border {
	struct Width: Named {
		public let value: CGFloat
	}
}

// MARK: -
extension Border.Width: ExpressibleByIntegerLiteral {
	public init(integerLiteral: IntegerLiteralType) {
		value = .init(integerLiteral)
	}
}
