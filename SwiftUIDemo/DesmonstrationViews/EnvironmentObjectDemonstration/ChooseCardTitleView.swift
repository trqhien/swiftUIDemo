//
//  ChooseCardTitleView.swift
//  SwiftUIDemo
//
//  Created by Hien Quang Tran on 7/11/19.
//  Copyright © 2019 Hien Quang Tran. All rights reserved.
//

import SwiftUI

struct ChooseCardTitleView: View {
	
	@EnvironmentObject private var cardData: CardData
	
    var body: some View {
		VStack(alignment: .leading) {
			TextField($cardData.title, placeholder: Text("Enter card title"))
			
			Divider()
				.frame(height: 2)
				.background(Color.oceanBlue)
			
			Text("Type something less than 8 characters")
				.font(.subheadline)
				.foregroundColor(.oceanBlue)
			
			Spacer().frame(height: 36)
			
			HStack {
				Spacer()
				
				NavigationButton(destination: ChooseCardTagView().environmentObject(self.cardData)) {
					Image("btn-next").renderingMode(.original)
				}
					.disabled(cardData.title == "")
			}
		}
			.padding(50)
			.navigationBarTitle(Text("Enter Card Title 💈"))
    }
}

#if DEBUG
struct ChooseCardTitleView_Previews : PreviewProvider {
    static var previews: some View {
		NavigationView {
			ChooseCardTitleView()
		}
			.environmentObject(CardData())
    }
}
#endif
