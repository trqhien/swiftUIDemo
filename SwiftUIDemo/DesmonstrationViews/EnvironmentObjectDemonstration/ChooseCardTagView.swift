//
//  ChooseCardTagView.swift
//  SwiftUIDemo
//
//  Created by Hien Quang Tran on 7/11/19.
//  Copyright © 2019 Hien Quang Tran. All rights reserved.
//

import SwiftUI

struct ChooseCardTagView : View {

	@EnvironmentObject private var cardData: CardData

	var body: some View {
		VStack(alignment: .leading) {
			TextField($cardData.tag, placeholder: Text("Enter card tag"))

			Divider()
				.frame(height: 2)
				.background(Color.oceanBlue)

			Text("Type something less than 8 characters")
				.font(.subheadline)
				.foregroundColor(.oceanBlue)

			Spacer().frame(height: 36)

			HStack {
				Spacer()
				
				NavigationButton(destination: ChooseCardBackgroundView().environmentObject(self.cardData)) {
					Image("btn-next").renderingMode(.original)
				}
					.disabled(cardData.tag == "")
			}
		}
			.padding(50)
			.navigationBarTitle(Text("Enter Card Tag 🏷"))
	}
}

#if DEBUG
struct ChooseCardTagView_Previews : PreviewProvider {
    static var previews: some View {
		NavigationView {
			ChooseCardTagView()
				.environmentObject(CardData())
		}
    }
}
#endif
