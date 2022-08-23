// Copyright © Fleuronic LLC. All rights reserved.

import struct CoreGraphics.CGFloat

public struct Percentage {
	public let value: CGFloat
}

// MARK: -
public extension Percentage {
	static let zero: Self = 0
	static let full: Self = 1
}

// MARK: -
extension Percentage: ExpressibleByIntegerLiteral {
	public init(integerLiteral: IntegerLiteralType) {
		value = .init(integerLiteral)
	}
}

extension Percentage: ExpressibleByFloatLiteral {
	public init(floatLiteral: FloatLiteralType) {
		value = .init(floatLiteral)
	}
}
