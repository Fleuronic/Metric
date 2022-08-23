// Copyright © Fleuronic LLC. All rights reserved.

import class UIKit.UILabel
import class UIKit.UITextField
import class UIKit.UITextView
import class UIKit.UIFont
import class UIKit.UIColor
import enum UIKit.NSTextAlignment

public protocol TextStyle {
	var font: UIFont { get }
}

// MARK: -
public protocol TextStyled: AnyObject {
	var textAlignment: NSTextAlignment { get set }
}

// MARK: -
extension UILabel: TextStyled {}

// MARK: -
extension UITextField: TextStyled {}

// MARK: -
extension UITextView: TextStyled {}
