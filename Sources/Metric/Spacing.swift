// Copyright © Fleuronic LLC. All rights reserved.

import struct CoreGraphics.CGFloat

public enum Spacing {}

// MARK: -
public extension Spacing {
	struct Horizontal: Named {
		public let value: CGFloat
	}

	struct Vertical: Named {
		public let value: CGFloat
	}
}

// MARK: -
public extension Spacing.Horizontal {
	static let zero: Self = 0
	static let `default`: Self = 8
}

// MARK: -
extension Spacing.Horizontal: ExpressibleByIntegerLiteral {
	public init(integerLiteral: IntegerLiteralType) {
		value = .init(integerLiteral)
	}
}

// MARK: -
public extension Spacing.Vertical {
	static let zero: Self = 0
	static let `default`: Self = 8
}

// MARK: -
extension Spacing.Vertical: ExpressibleByIntegerLiteral {
	public init(integerLiteral: IntegerLiteralType) {
		value = .init(integerLiteral)
	}
}
