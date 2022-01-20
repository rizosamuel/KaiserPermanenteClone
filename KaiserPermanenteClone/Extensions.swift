//
// Extensions.swift
// KaiserPermanenteClone
//
// Created by Rijo Samuel on 18/01/22.
//

import UIKit

extension UIView {
	
	func anchor(top: NSLayoutYAxisAnchor? = nil, paddingTop: CGFloat = 0,
				bottom: NSLayoutYAxisAnchor? = nil, paddingBottom: CGFloat = 0,
				left: NSLayoutXAxisAnchor? = nil, paddingLeft: CGFloat = 0,
				right: NSLayoutXAxisAnchor? = nil, paddingRight: CGFloat = 0,
				width: CGFloat = 0, height: CGFloat = 0) {
		
		// translatesAutoresizingMaskIntoConstraints = false
		
		if let top = top {
			topAnchor.constraint(equalTo: top, constant: paddingTop).isActive = true
		}
		
		if let bottom = bottom {
			bottomAnchor.constraint(equalTo: bottom, constant: paddingBottom).isActive = true
		}
		
		if let left = left {
			leadingAnchor.constraint(equalTo: left, constant: paddingLeft).isActive = true
		}
		
		if let right = right {
			trailingAnchor.constraint(equalTo: right, constant: paddingRight).isActive = true
		}
		
		if width != 0 {
			widthAnchor.constraint(equalToConstant: width).isActive = true
		}
		
		if height != 0 {
			heightAnchor.constraint(equalToConstant: height).isActive = true
		}
	}
	
	func setSize(width: CGFloat = 0, height: CGFloat = 0) {
		
		// translatesAutoresizingMaskIntoConstraints = false
		
		if width != 0 {
			widthAnchor.constraint(equalToConstant: width).isActive = true
		}
		
		if height != 0 {
			heightAnchor.constraint(equalToConstant: height).isActive = true
		}
	}
	
	func center(centerX: NSLayoutXAxisAnchor? = nil, paddingX: CGFloat = 0,
				centerY: NSLayoutYAxisAnchor? = nil, paddingY: CGFloat = 0) {
		
		// translatesAutoresizingMaskIntoConstraints = false
		
		if let centerX = centerX {
			centerXAnchor.constraint(equalTo: centerX, constant: paddingX).isActive = true
		}
		
		if let centerY = centerY {
			centerYAnchor.constraint(equalTo: centerY, constant: paddingY).isActive = true
		}
	}
	
	//	func center(centerX: NSLayoutXAxisAnchor?, centerY: NSLayoutYAxisAnchor?)  {
	//		self.center(centerX: centerX, paddingX: 0, centerY: centerY, paddingY: 0)
	//	}
	
	func proportionalSize(width: NSLayoutDimension? = nil, widthPercent: CGFloat = 1,
						  height: NSLayoutDimension? = nil, heightPercent: CGFloat = 1) {
		
		// translatesAutoresizingMaskIntoConstraints = false
		
		if let width = width {
			widthAnchor.constraint(equalTo: width, multiplier: widthPercent).isActive = true
		}
		
		if let height = height {
			heightAnchor.constraint(equalTo: height, multiplier: heightPercent).isActive = true
		}
	}
}
