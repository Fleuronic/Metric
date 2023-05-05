// Copyright © Fleuronic LLC. All rights reserved.

import UIKit

@dynamicMemberLookup
public struct Styled<Base: UIView> {
	public private(set) var base: Base

	public init() {
		base = .init()
	}
}

// MARK: -
public extension Styled {
	subscript<T>(dynamicMember keyPath: WritableKeyPath<Base, T>) -> (T) -> Self {
		{
			var base = self.base
			base[keyPath: keyPath] = $0
			return .init(base: base)
		}
	}
}

// MARK: -
private extension Styled {
	init(base: Base) {
		self.base = base
	}
}
