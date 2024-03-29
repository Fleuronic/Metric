// Copyright © Fleuronic LLC. All rights reserved.

import struct CoreGraphics.CGFloat

public struct Opacity: Named {
	public let value: CGFloat
}

// MARK: -
public extension Opacity {
	static let transparent: Self = 0
	static let translucent: Self = 0.5
	static let opaque: Self = 1
}

// MARK: -
extension Opacity: ExpressibleByIntegerLiteral {
	public init(integerLiteral: IntegerLiteralType) {
		value = .init(integerLiteral)
	}
}

extension Opacity: ExpressibleByFloatLiteral {
	public init(floatLiteral: FloatLiteralType) {
		value = .init(floatLiteral)
	}
}
