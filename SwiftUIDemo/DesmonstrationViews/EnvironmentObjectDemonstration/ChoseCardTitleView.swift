//
//  ChoseCardTitleView.swift
//  SwiftUIDemo
//
//  Created by Hien Quang Tran on 7/11/19.
//  Copyright © 2019 Hien Quang Tran. All rights reserved.
//

import SwiftUI

struct ChoseCardTitleView : View {
	
	@State private var textInput: String = ""
	
    var body: some View {
		VStack(alignment: .leading) {
			TextField($textInput, placeholder: Text("Enter card title"))
			
			Divider()
				.frame(height: 2)
				.background(Color.oceanBlue)
			
			Text("Type something less than 8 characters")
				.font(.subheadline)
				.foregroundColor(.watermelon)
			
			Spacer().frame(height: 36)
			
			HStack {
				Spacer()
				
				NavigationButton(destination: ChoseCardTagView()) {
					Image("btn-next").renderingMode(.original)
				}
			}
		}
			.padding(50)
			.navigationBarTitle(Text("Enter Card Title 💈"))
    }
}

#if DEBUG
struct ChoseCardTitleView_Previews : PreviewProvider {
    static var previews: some View {
		NavigationView {
			ChoseCardTitleView()
		}
    }
}
#endif
