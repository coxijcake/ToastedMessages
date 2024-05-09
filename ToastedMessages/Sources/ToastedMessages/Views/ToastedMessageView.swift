// 
//  ToastedMessageView.swift
//  
//
//  Created by Nikita Begletskiy on 09/05/2024.
//


import UIKit

// MARK: - Types
public extension ToastedMessageView {
    typealias ContentView = ToastContentView
	typealias Configuration = ToastedMessageViewConfiguration
}

public final class ToastedMessageView: UIView {
	// MARK: - Subviews
	let contentView: ContentView
    
    // MARK: - Lifecycle
	init(
		contentView: ContentView
	) {
		self.contentView = contentView
		
		super.init(frame: .zero)
		
		baseConfigure()
	}
	
	required init?(coder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}
}

// MARK: - Public
public extension ToastedMessageView {
	func configure(
		with configuration: Configuration
	) {
		configure(with: configuration.layout)
	}
}

// MARK: - Main
private extension ToastedMessageView {
	func configure(
		with layout: ToastLayoutConfiguration
	) {
		clipsToBounds = true
		layer.cornerRadius = layout.cornerRadius
		configure(with: layout.constraints)
	}
	
	func configure(
		with constraints: ToastLayoutConfiguration.Constraints
	) {
		
		translatesAutoresizingMaskIntoConstraints = false
		NSLayoutConstraint.activate([
			widthAnchor.constraint(greaterThanOrEqualToConstant: constraints.minWidth),
			heightAnchor.constraint(greaterThanOrEqualToConstant: constraints.minHeight)
		])
	}
}

// MARK: - Layout
private extension ToastedMessageView {
	func configureLayout() {
		contentView.translatesAutoresizingMaskIntoConstraints = false
		
		NSLayoutConstraint.activate([
			contentView.topAnchor.constraint(equalTo: topAnchor),
			contentView.trailingAnchor.constraint(equalTo: trailingAnchor),
			contentView.bottomAnchor.constraint(equalTo: bottomAnchor),
			contentView.leadingAnchor.constraint(equalTo: leadingAnchor)
		])
	}
}

// MARK: - Base Configuration
private extension ToastedMessageView {
    func baseConfigure() {
		setupSubviews()
		configureLayout()
    }
	
	func setupSubviews() {
		addSubview(contentView)
	}
}
