//
//  ViewController.swift
//  Example
//
//  Created by Nikita Begletskiy on 01/04/2024.
//

import UIKit
import ToastedMessages

class ViewController: UIViewController {

	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view.
		
		view.backgroundColor = .red
	}

	override func viewDidAppear(_ animated: Bool) {
		super.viewDidAppear(animated)
		
		testAddToast()
	}

	private func testAddToast() {
		let titleToastConfiguration: TitledToastConfiguration = TitledToastConfiguration(
			title: .init(
				text: "Some title",
				labelParams: .init(numberOfLines: 1)
			),
			subtitle: .init(
				text: "Some subtitle",
				labelParams: .init(numberOfLines: 1)
			)
		)
		
		let titledToastContentView: TitledToastedContentView = TitledToastedContentView()
		titledToastContentView.configureWith(configuration: titleToastConfiguration)
		titledToastContentView.sizeToFit()
		titledToastContentView.backgroundColor = .white
		
		let toastSize: CGSize = .init(width: 250, height: 60)
		
		titledToastContentView.frame = .init(
			origin: .init(x: view.center.x - toastSize.width * 0.5,
						  y: view.center.y - toastSize.height * 0.5),
			size: toastSize
		)
		
		view.addSubview(titledToastContentView)
		
		
		let iconToastConfiguration: IconToastConfiguration = IconToastConfiguration(
			icon: .init(icon: .checkmark, tintColor: nil),
			titles: .init(
				title: .init(
					text: "fnkewfknwekfnwef",
					labelParams: .init(
						numberOfLines: 1
					)
				),
				subtitle: .init(
					text: "dwkmdwdmkwdkm",
					labelParams: .init(
						numberOfLines: 1
					)
				)
			)
		)
		
		
		let iconToastContentView: IconToastedContentView = IconToastedContentView()
		iconToastContentView.configure(with: iconToastConfiguration)
		iconToastContentView.sizeToFit()
		iconToastContentView.backgroundColor = .white
		
		iconToastContentView.frame = .init(
			origin: .init(
				x: view.center.x - toastSize.width * 0.5,
				y: view.frame.minY + 100
			),
			size: toastSize
		)
		
		view.addSubview(iconToastContentView)
		
//		let configuration: SimpleToastContentView.Configuration = SimpleToastContentView.Configuration(
//			title: .init(text: "Some title"),
////			subtitle: .init(text: "Some subtitle", font: .systemFont(ofSize: 12, weight: .semibold)),
//			subtitle: nil,
//			icon: .init(image: .checkmark)
//		)
//		
//		let toastView: SimpleToastContentView = SimpleToastContentView(configuration: configuration, frame: .zero)
//		toastView.sizeToFit()
//		
//		let toastSize: CGSize = .init(width: 250, height: 130)
//		toastView.frame = .init(
//			x: view.center.x - toastSize.width * 0.5,
//			y: view.center.y - toastSize.height * 0.5,
//			width: toastSize.width,
//			height: toastSize.height
//		)
//		
//		print(toastView.frame.size)
//		view.addSubview(toastView)
	}
}

