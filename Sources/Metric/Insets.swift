// Copyright © Fleuronic LLC. All rights reserved.

import struct UIKit.CGFloat
import struct UIKit.UIEdgeInsets

public struct Insets {
	public let value: CGFloat
}

// MARK: -
public extension Insets {
	static let zero: Self = 0

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

// MARK: -
public extension UIEdgeInsets {
	init(
		horizontal: Insets.Horizontal,
		vertical: Insets.Vertical
	) {
		self.init(
			top: vertical.value,
			left: horizontal.value,
			bottom: vertical.value,
			right: horizontal.value
		)
	}
}
