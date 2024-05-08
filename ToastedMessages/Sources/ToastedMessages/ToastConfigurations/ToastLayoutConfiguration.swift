//
//  ToastLayoutConfiguration.swift
//
//
//  Created by Nikita Begletskiy on 05/05/2024.
//

import UIKit

public struct ToastLayoutConfiguration {
	let constraints: Constraints
	let cornerRadius: CGFloat
	
	public init(
		constraints: Constraints,
		cornerRadius: CGFloat
	) {
		self.constraints = constraints
		self.cornerRadius = cornerRadius
	}
}

public extension ToastLayoutConfiguration {
	struct Constraints {
		let minWidth: CGFloat
		let minHeight: CGFloat
		
		public init(
			minWidth: CGFloat,
			minHeight: CGFloat
		) {
			self.minWidth = minWidth
			self.minHeight = minHeight
		}
	}
}
