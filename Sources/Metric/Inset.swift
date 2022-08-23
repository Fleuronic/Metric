// Copyright © Fleuronic LLC. All rights reserved.

import struct UIKit.CGFloat

public struct Insets {
	public let value: CGFloat
}

// MARK: -
public extension Insets {
	struct Horizontal {
		public let value: CGFloat
	}

	struct Vertical {
		public let value: CGFloat
	}
}

// MARK: -
extension Insets: ExpressibleByIntegerLiteral {
	public init(integerLiteral: IntegerLiteralType) {
		value = .init(integerLiteral: integerLiteral)
	}
}

extension Insets: ExpressibleByFloatLiteral {
	public init(floatLiteral: FloatLiteralType) {
		value = .init(floatLiteral: floatLiteral)
	}
}

// MARK: -
public extension Insets.Horizontal {
	static let zero: Self = 0
	static let `default`: Self = 8

	init(_ insets: Insets) {
		value = insets.value
	}
}

// MARK: -
extension Insets.Horizontal: ExpressibleByIntegerLiteral {
	public init(integerLiteral: IntegerLiteralType) {
		value = .init(integerLiteral: integerLiteral)
	}
}

extension Insets.Horizontal: ExpressibleByFloatLiteral {
	public init(floatLiteral: FloatLiteralType) {
		value = .init(floatLiteral: floatLiteral)
	}
}

// MARK: -
public extension Insets.Vertical {
	static let zero: Self = 0
	static let `default`: Self = 8

	init(_ insets: Insets) {
		value = insets.value
	}
}

// MARK: -
extension Insets.Vertical: ExpressibleByIntegerLiteral {
	public init(integerLiteral: IntegerLiteralType) {
		value = .init(integerLiteral: integerLiteral)
	}
}

extension Insets.Vertical: ExpressibleByFloatLiteral {
	public init(floatLiteral: FloatLiteralType) {
		value = .init(floatLiteral: floatLiteral)
	}
}
