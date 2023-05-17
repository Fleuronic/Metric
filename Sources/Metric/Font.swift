// Copyright © Fleuronic LLC. All rights reserved.

import struct CoreGraphics.CGFloat

public enum Font {}

// MARK: -
public extension Font {
	struct Size: Named {
		public let value: CGFloat
	}
}

// MARK: -
public extension Font.Size {
	static let `default`: Self = 14
}

// MARK: -
extension Font.Size: ExpressibleByIntegerLiteral {
	public init(integerLiteral: IntegerLiteralType) {
		value = .init(integerLiteral)
	}
}
