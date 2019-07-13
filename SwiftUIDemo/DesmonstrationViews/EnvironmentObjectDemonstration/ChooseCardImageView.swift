//
//  ChooseCardImageView.swift
//  SwiftUIDemo
//
//  Created by Hien Quang Tran on 7/11/19.
//  Copyright © 2019 Hien Quang Tran. All rights reserved.
//

import SwiftUI

struct ChooseCardImageView : View {
	@State private var selectedImage: String = ""
	
    var body: some View {
		VStack {
			if selectedImage != "" {
				NavigationButton(destination: CardReviewView()) {
					HStack {
						Image(selectedImage)
							.resizable()
							.renderingMode(.original)
							.aspectRatio(4/3, contentMode: .fit)
							.frame(width: 60)
						
						Text(selectedImage)
							.fontWeight(.bold)
							.color(.primary)
					}
				}
			}
			
			MyUITableViewControllerRepresentable(selectedImage: $selectedImage)
		}
			.navigationBarTitle(Text("Choose illustration 🌌"))
    }
}

#if DEBUG
struct ChooseCardImageView_Previews : PreviewProvider {
    static var previews: some View {
		NavigationView {
			ChooseCardImageView()			
		}
    }
}
#endif
