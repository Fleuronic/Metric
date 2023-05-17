// Copyright © Fleuronic LLC. All rights reserved.

import enum Foundation.DispatchTimeInterval

public struct Delay {
	public let value: DispatchTimeInterval
}

// MARK: -
public extension Delay {
	var nanoseconds: UInt64? {
		switch value {
		case let .seconds(seconds):
			return .init(seconds * 1_000_000_000)
		case let .milliseconds(milliseconds):
			return .init(milliseconds * 1_000_000)
		case let .microseconds(microseconds):
			return .init(microseconds * 1_000)
		case let .nanoseconds(nanoseconds):
			return .init(nanoseconds)
		default:
			return nil
		}
	}
}

// MARK: -
extension Delay: ExpressibleByIntegerLiteral {
	public init(integerLiteral: IntegerLiteralType) {
		value = .seconds(integerLiteral)
	}
}
