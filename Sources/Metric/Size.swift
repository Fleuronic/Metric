// Copyright © Fleuronic LLC. All rights reserved.

import struct CoreGraphics.CGFloat

public struct Size {
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
	struct Width {
		public let value: CGFloat
	}

	struct Height {
		public let value: CGFloat
	}
}

// MARK: -
extension Size: Named {}

// MARK: -
extension Size.Width: ExpressibleByIntegerLiteral {
	public init(integerLiteral: IntegerLiteralType) {
		value = .init(integerLiteral)
	}
}

extension Size.Width: Named {}

// MARK: -
extension Size.Height: ExpressibleByIntegerLiteral {
	public init(integerLiteral: IntegerLiteralType) {
		value = .init(integerLiteral)
	}
}

extension Size.Height: Named {}
