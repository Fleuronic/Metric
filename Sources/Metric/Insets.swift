// Copyright © Fleuronic LLC. All rights reserved.

import UIKit

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
extension Insets: Named {}

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

extension Insets.Horizontal: Named {}

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

extension Insets.Vertical: Named {}

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

// MARK: -
public extension Styled where Base: UIStackView {
	func horizontalInsets(named name: Insets.Horizontal.Name) -> Self {
		let insets = name(Insets.Horizontal.self).value
		base.isLayoutMarginsRelativeArrangement = true
		base.directionalLayoutMargins.leading = insets
		base.directionalLayoutMargins.trailing = insets
		return self
	}

	func verticalInsets(named name: Insets.Vertical.Name) -> Self {
		let insets = name(Insets.Vertical.self).value
		base.isLayoutMarginsRelativeArrangement = true
		base.directionalLayoutMargins.top = insets
		base.directionalLayoutMargins.bottom = insets
		return self
	}
}
