// Copyright © Fleuronic LLC. All rights reserved.

import struct CoreGraphics.CGFloat

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
