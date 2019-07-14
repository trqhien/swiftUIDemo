//
//  ChooseCardImageView.swift
//  SwiftUIDemo
//
//  Created by Hien Quang Tran on 7/11/19.
//  Copyright © 2019 Hien Quang Tran. All rights reserved.
//

import SwiftUI

struct ChooseCardImageView : View {
	
	@EnvironmentObject private var cardData: CardData
	
    var body: some View {
		VStack {
			if cardData.image != "" {
				NavigationButton(destination: CardReviewView().environmentObject(self.cardData)) {
					HStack {
						Image(cardData.image)
							.resizable()
							.renderingMode(.original)
							.aspectRatio(4/3, contentMode: .fit)
							.frame(width: 60)
						
						Text(cardData.image)
							.fontWeight(.bold)
							.color(.primary)
					}
				}
			}
			
			MyUITableViewControllerRepresentable(selectedImage: $cardData.image)
		}
			.navigationBarTitle(Text("Choose illustration 🌌"))
    }
}

#if DEBUG
struct ChooseCardImageView_Previews : PreviewProvider {
    static var previews: some View {
		NavigationView {
			ChooseCardImageView()
				.environmentObject(CardData())
		}
		
    }
}
#endif
