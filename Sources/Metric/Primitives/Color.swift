// Copyright © Fleuronic LLC. All rights reserved.

import UIKit
import DynamicColor

public extension Styled {
	func backgroundColorAsset<BackgroundColor>(color: (BackgroundColor.Type) -> UIColor) -> Self {
		base.backgroundColor = color(BackgroundColor.self)
		return self
	}

	func borderColorAsset<BorderColor>(color: (BorderColor.Type) -> UIColor) -> Self {
		base.layer.borderColor = color(BorderColor.self).cgColor
		return self
	}
}

// MARK: -
public extension Styled where Base: UIButton {
	func titleColorAsset<TextColor>(_ color: @escaping (TextColor.Type) -> UIColor) -> Self {
		let color = color(TextColor.self)
		base.setTitleColor(color, for: .normal)
		base.setTitleColor(color, for: .highlighted)
		base.setTitleColor(color, for: .disabled)
		return self
	}

	func backgroundColorAsset<BackgroundColor>(
		darkenedBy percentage: Percentage,
		fadedTo opacity: Opacity,
		color: @escaping (BackgroundColor.Type) -> UIColor
	) -> Self {
		base.configuration = .filled()
		base.configuration?.background.cornerRadius = .zero
		base.configuration?.activityIndicatorColorTransformer = .init { _ in base.titleColor(for: .normal)! }

		base.configurationUpdateHandler = {
			var color = color(BackgroundColor.self)

			switch $0.state {
			case .highlighted:
				color = color.darkened(amount: percentage.value)
			case .disabled:
				color = color.withAlphaComponent(opacity.value)
			default:
				break
			}

			$0.configuration?.background.backgroundColor = color
		}

		return self
	}
}
