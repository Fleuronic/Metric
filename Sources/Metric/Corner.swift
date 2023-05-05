// Copyright © Fleuronic LLC. All rights reserved.

import UIKit

import struct CoreGraphics.CGFloat

public enum Corner {}

// MARK: -
public extension Corner {
	struct Radius {
		public let value: CGFloat
	}
}

// MARK: -
extension Corner.Radius: ExpressibleByIntegerLiteral {
	public init(integerLiteral: IntegerLiteralType) {
		value = .init(integerLiteral)
	}
}

// MARK: -
public extension Styled {
	func cornerRadius(radius: (Corner.Radius.Type) -> Corner.Radius) -> Self {
		base.layer.cornerRadius = radius(Corner.Radius.self).value
		return self
	}
}

// MARK: -
public extension Styled where Base: UIButton {
	func cornerRadius(radius: (Corner.Radius.Type) -> Corner.Radius) -> Self {
		base.configuration?.background.cornerRadius = radius(Corner.Radius.self).value
		return self
	}
}
