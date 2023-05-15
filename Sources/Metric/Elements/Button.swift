// Copyright © Fleuronic LLC. All rights reserved.

import UIKit

public extension UIButton {
	static var `default`: Styled<UIButton> {
		let base = UIButton(type: .system)
		var configuration =  UIButton.Configuration.plain()
		configuration.contentInsets = .zero
		base.configuration = configuration

		return .init(base: base)
	}

	static func type(_ type: UIButton.ButtonType) -> Styled<UIButton> {
		.init(base: .init(type: type))
	}
}
