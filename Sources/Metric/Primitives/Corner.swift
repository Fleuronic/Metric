// Copyright © Fleuronic LLC. All rights reserved.

import UIKit

import struct CoreGraphics.CGFloat

public enum Corner {}

// MARK: -
public extension Corner {
	struct Radius: Named {
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
	func cornerRadius(named name: Corner.Radius.Name) -> Self {
		base.layer.cornerRadius = name(Corner.Radius.self).value
		return self
	}
}

// MARK: -
public extension Styled where Base: UIButton {
	func cornerRadius(named name: Corner.Radius.Name) -> Self {
		base.configuration?.background.cornerRadius = name(Corner.Radius.self).value
		return self
	}
}
