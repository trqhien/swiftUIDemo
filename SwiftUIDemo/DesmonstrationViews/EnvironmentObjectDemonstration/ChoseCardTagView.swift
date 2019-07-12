//
//  ChoseCardTagView.swift
//  SwiftUIDemo
//
//  Created by Hien Quang Tran on 7/11/19.
//  Copyright © 2019 Hien Quang Tran. All rights reserved.
//

import SwiftUI

struct ChoseCardTagView : View {
	@State private var textInput: String = ""
	
	var body: some View {
		VStack(alignment: .leading) {
			TextField($textInput, placeholder: Text("Enter card tag"))
			
			Divider()
				.frame(height: 2)
				.background(Color.oceanBlue)
			
			Text("Type something less than 8 characters")
				.font(.subheadline)
				.foregroundColor(.watermelon)
			
			Spacer().frame(height: 36)
			
			HStack {
				Spacer()
				
				NavigationButton(destination: ChoseCardBackgroundView()) {
					Image("btn-next").renderingMode(.original)
				}
			}
		}
			.padding(50)
			.navigationBarTitle(Text("Enter Card Tag 🏷"))
	}
}

#if DEBUG
struct ChoseCardTagView_Previews : PreviewProvider {
    static var previews: some View {
		NavigationView {
			ChoseCardTagView()
		}
    }
}
#endif
