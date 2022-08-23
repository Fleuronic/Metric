// Copyright © Fleuronic LLC. All rights reserved.

import struct UIKit.CGFloat
import class UIKit.UIFont
import class UIKit.UIFontDescriptor

public enum Font {}

// MARK: -
public extension Font {
	struct Size {
		public let value: CGFloat
	}
}

// MARK: -
extension Font.Size: ExpressibleByIntegerLiteral {
	public init(integerLiteral: IntegerLiteralType) {
		value = .init(integerLiteral)
	}
}

// MARK: -
public extension UIFont {
	var bold: Self {
		weight(.bold)
	}

	var italic: Self {
		traits(.traitItalic)
	}

	var boldItalic: Self {
		traits([.traitBold, .traitItalic])
	}

	func size(_ size: Font.Size) -> Self {
		.init(descriptor: fontDescriptor, size: size.value)
	}

	func weight(_ weight: UIFont.Weight) -> Self {
		var attributes = fontDescriptor.fontAttributes
		var traits = attributes as? [UIFontDescriptor.TraitKey: Any] ?? [:]
		traits[.weight] = weight
		attributes[.traits] = traits

		return .init(
			descriptor: .init(fontAttributes: attributes),
			size: pointSize
		)
	}

	func traits(_ traits: UIFontDescriptor.SymbolicTraits) -> Self {
		.init(
			descriptor: fontDescriptor.withSymbolicTraits(traits) ?? fontDescriptor,
			size: pointSize
		)
	}

	func design(_ design: UIFontDescriptor.SystemDesign) -> Self {
		.init(
			descriptor: fontDescriptor.withDesign(design) ?? fontDescriptor,
			size: pointSize
		)
	}

	static func size(_ size: Font.Size) -> UIFont {
		.systemFont(ofSize: size.value)
	}
}
