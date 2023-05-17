// Copyright © Fleuronic LLC. All rights reserved.

import struct CoreGraphics.CGFloat

public struct Size: Named {
	public let width: Width
	public let height: Height

	public init(
		width: Width,
		height: Height
	) {
		self.width = width
		self.height = height
	}
}

// MARK: -
public extension Size {
	struct Width: Named {
		public let value: CGFloat
	}

	struct Height: Named {
		public let value: CGFloat
	}
}

// MARK: -
extension Size.Width: ExpressibleByIntegerLiteral {
	public init(integerLiteral: IntegerLiteralType) {
		value = .init(integerLiteral)
	}
}

// MARK: -
extension Size.Height: ExpressibleByIntegerLiteral {
	public init(integerLiteral: IntegerLiteralType) {
		value = .init(integerLiteral)
	}
}
