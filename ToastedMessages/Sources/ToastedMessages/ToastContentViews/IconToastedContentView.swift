// 
//  IconToastedContentView.swift
//  
//
//  Created by Nikita Begletskiy on 27/04/2024.
//


import UIKit

//MARK: - Constants
extension IconToastedContentView {
	enum Constants {
		enum Layout {
			static let iconSize: CGSize = CGSize(width: 28, height: 28)
		}
	}
}

public final class IconToastedContentView: UIStackView {
    // MARK: - Subviews
	private lazy var titlesView: TitledToastedContentView = createTitlesView()
	private lazy var iconImageView: UIImageView = createIconImageView()
    
    // MARK: - Lifecycle
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        baseConfigure()
    }
    
    required init(coder: NSCoder) {
        super.init(coder: coder)
        
        baseConfigure()
    }
}

// MARK: - Public
public extension IconToastedContentView {
	func configure(
		with config: IconToastConfiguration
	) {
		titlesView.configureWith(configuration: config.titles)
		configureIcon(with: config.icon)
	}
}

// MARK: - Main
private extension IconToastedContentView {
    func configureIcon(with
		iconParams: ToastIconParams
	) {
		iconImageView.image = iconParams.icon
		iconImageView.tintColor = iconParams.tintColor
	}
}

// MARK: - Layout
private extension IconToastedContentView {
	func setupConstraints() {
		setupIconImageViewConstraints()
	}
	
	func setupIconImageViewConstraints() {
		iconImageView.translatesAutoresizingMaskIntoConstraints = false
		NSLayoutConstraint.activate([
			iconImageView.widthAnchor.constraint(equalToConstant: Constants.Layout.iconSize.width),
			iconImageView.heightAnchor.constraint(equalToConstant: Constants.Layout.iconSize.height)
		])
	}
}

// MARK: - Base Configuration
private extension IconToastedContentView {
    func baseConfigure() {
        configureStackProps()
		addArrangedSubviews()
		setupConstraints()
    }
	
	func configureStackProps() {
		axis = .horizontal
		distribution = .fill
		alignment = .center
		spacing = 16
	}
	
	func addArrangedSubviews() {
		[iconImageView, titlesView].forEach { addArrangedSubview($0) }
	}
}

// MARK: - Subviews Creation
private extension IconToastedContentView {
	func createTitlesView() -> TitledToastedContentView {
		let view: TitledToastedContentView = TitledToastedContentView()
		
		
		return view
	}
	
	func createIconImageView() -> UIImageView {
		let imageView: UIImageView = UIImageView()
		imageView.contentMode = .scaleAspectFit
		
		return imageView
	}
}
