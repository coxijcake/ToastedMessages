//
//  IconToastConfiguration.swift
//
//
//  Created by Nikita Begletskiy on 05/05/2024.
//

import UIKit

public struct IconToastConfiguration {
	public let icon: ToastIconParams
	public let titles: TitledToastConfiguration
	
	public init(
		icon: ToastIconParams,
		titles: TitledToastConfiguration
	) {
		self.icon = icon
		self.titles = titles
	}
}

public struct ToastIconParams {
	public let icon: UIImage
	public let tintColor: UIColor?
	
	public init(
		icon: UIImage,
		tintColor: UIColor?
	) {
		self.icon = icon
		self.tintColor = tintColor
	}
}
