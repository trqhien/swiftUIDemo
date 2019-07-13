//
//  ChoseCardBackgroundView.swift
//  SwiftUIDemo
//
//  Created by Hien Quang Tran on 7/11/19.
//  Copyright © 2019 Hien Quang Tran. All rights reserved.
//

import SwiftUI

struct ChoseCardBackgroundView : View {
	let backgroundColors = [
		"banana",
		"carrot",
		"eggplant",
		"ink",
		"lemon",
		"watermelon",
		"mango",
		"potato",
		"purpleSweetPotato",
		"strawberrySmoothie",
		"taro"
	]
	
	@State private var selectedValue: String = ""
	
    var body: some View {
		VStack {
			if selectedValue != "" {
				NavigationButton(destination: ChooseCardImageView()) {
					Text(selectedValue)
						.fontWeight(.bold)
						.color(.white)
						.padding(10)
						.background(Color(selectedValue))
						.cornerRadius(12)
				}
					.animation(Animation.basic(duration: 0.3, curve: .easeInOut))
			}
			
			List(
				backgroundColors.identified(by: \.self),
				selection: $selectedValue,
				action: { value in
					self.selectedValue = value
					// Update enviroment object
				},
				rowContent: { color in
					HStack {
						MyEmptyView()
							.frame(width: 60, height: 60)
							.background(Color(color))
							.cornerRadius(8)
						
						Text(color)
							.font(.title)
							.fontWeight(.bold)
						
						if self.selectedValue == color {
							Spacer()
							Text("✅")
								.animation(Animation.basic(duration: 0.3, curve: .easeInOut))
						}
					}
				}
			)
		}
			.navigationBarTitle(Text("Select background 🌈"))
    }
}

extension String: SelectionManager {
	mutating public func select(_ value: String) {
		self = value
	}
	
	mutating public func deselect(_ value: String) {
		self = ""
	}
	
	public func isSelected(_ value: String) -> Bool {
		return value == self
	}
}

#if DEBUG
struct ChoseCardBackgroundView_Previews : PreviewProvider {
    static var previews: some View {
		NavigationView {
			ChoseCardBackgroundView()
		}
    }
}
#endif

struct MyEmptyView: UIViewRepresentable {
	func makeUIView(context: Context) -> UIView {
		return UIView()
	}
	
	func updateUIView(_ uiView: UIView, context: Context) {}
}
