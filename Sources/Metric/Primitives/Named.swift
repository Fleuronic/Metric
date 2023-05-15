// Copyright © Fleuronic LLC. All rights reserved.

public protocol Named {}

// MARK: -
public extension Named {
	typealias Name = (Self.Type) -> Self
}
