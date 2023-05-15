// Copyright © Fleuronic LLC. All rights reserved.

import UIKit

public extension UIStackView {
	static var vertical: Styled<UIStackView> {
		.init().axis(.vertical)
	}

	static var horizontal: Styled<UIStackView> {
		.init()
	}
}
