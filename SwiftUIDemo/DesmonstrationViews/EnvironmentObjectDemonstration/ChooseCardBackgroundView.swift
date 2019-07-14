//
//  ChooseCardBackgroundView.swift
//  SwiftUIDemo
//
//  Created by Hien Quang Tran on 7/11/19.
//  Copyright © 2019 Hien Quang Tran. All rights reserved.
//

import SwiftUI

struct ChooseCardBackgroundView: View {
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
	
	@EnvironmentObject private var cardData: CardData
	
    var body: some View {
		VStack {
			if cardData.color != "" {
				NavigationButton(destination: ChooseCardImageView().environmentObject(self.cardData)) {
					Text(cardData.color)
						.fontWeight(.bold)
						.color(.white)
						.padding(10)
						.background(Color(cardData.color))
						.cornerRadius(12)
				}
					.animation(Animation.basic(duration: 0.3, curve: .easeInOut))
			}
			
			List(
				backgroundColors.identified(by: \.self),
				selection: $cardData.color,
				action: { value in
					self.cardData.updateColor(value)
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
						
						if self.cardData.color == color {
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
struct ChooseCardBackgroundView_Previews: PreviewProvider {
    static var previews: some View {
		NavigationView {
			ChooseCardBackgroundView()
				.environmentObject(CardData())
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
