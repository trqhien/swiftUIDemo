//
//  MyUIViewRepresentable.swift
//  SwiftUIDemo
//
//  Created by Hien Quang Tran on 7/13/19.
//  Copyright © 2019 Hien Quang Tran. All rights reserved.
//

import SwiftUI
import UIKit

struct MyUIViewRepresentable: UIViewRepresentable {
	class Coordinator: NSObject {
		@Binding var textInput: String

		init(textInput: Binding<String>) {
			$textInput = textInput
		}

		@objc func reset(_ sender: UIButton) {
			textInput = ""
		}
	}

	@Binding var textInput: String

	func makeUIView(context: Context) -> MyUIKitView {
		let uiView = MyUIKitView()
		uiView.addButtonTarget(context.coordinator, action: #selector(Coordinator.reset(_:)), for: .touchUpInside)
		return uiView
	}

	func updateUIView(_ uiView: MyUIKitView, context: Context) {
		uiView.titleLabel.text = textInput
	}

	func makeCoordinator() -> MyUIViewRepresentable.Coordinator {
		return Coordinator(textInput: $textInput)
	}
}

struct MyUIViewBasicRepresentable: UIViewRepresentable {
	
	func makeUIView(context: Context) -> MyUIKitView {
		return MyUIKitView()
	}
	
	func updateUIView(_ uiView: MyUIKitView, context: Context) { }
}

final class MyUIKitView: UIView {
	
	private let descriptionLabel: UILabel = {
		let label = UILabel()
		label.translatesAutoresizingMaskIntoConstraints = false
		label.numberOfLines = 0
		label.font = UIFont.boldSystemFont(ofSize: 28)
		label.text = "Hey I'm UIKit 👇🏽👇🏽👇🏽"
		return label
	}()
	
	let titleLabel: UILabel = {
		let label = UILabel()
		label.translatesAutoresizingMaskIntoConstraints = false
		label.numberOfLines = 0
		label.font = UIFont.boldSystemFont(ofSize: 18)
		label.backgroundColor = UIColor(named: "spotify")
		label.text = ""
		return label
	}()
	
	lazy var resetButton: UIButton = {
		let button = UIButton()
		button.translatesAutoresizingMaskIntoConstraints = false
		button.setTitle("Reset", for: .normal)
		return button
	}()
	
	override init(frame: CGRect) {
		super.init(frame: frame)
		
		backgroundColor = UIColor(named: "potato")
		addSubviews()
	}
	
	required init?(coder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}
	
	func addButtonTarget(_ target: Any?, action: Selector, for event: UIControl.Event) {
		resetButton.addTarget(target, action: action, for: event)
	}
	
	private func addSubviews() {
		addSubview(descriptionLabel)
		addSubview(titleLabel)
		addSubview(resetButton)
		
		NSLayoutConstraint.activate([
			descriptionLabel.topAnchor.constraint(equalTo: topAnchor, constant: 10),
			descriptionLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
			
			titleLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
			titleLabel.centerYAnchor.constraint(equalTo: centerYAnchor),
			
			resetButton.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -20),
			resetButton.centerXAnchor.constraint(equalTo: centerXAnchor),
			
		])
	}
}

#if DEBUG
//struct MyUIKitViewRepresentable_Previews: PreviewProvider {
//    static var previews: some View {
//		@State var input = ""
//		return MyUIKitViewRepresentable(textInput: $input)
//    }
//}
#endif
