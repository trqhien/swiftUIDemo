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
	]
	
    var body: some View {
		
		List(backgroundColors.identified(by: \.self)) { color in
			HStack {
				Divider()
					.frame(width: 60, height: 60)
					.background(Color(color))
				
				Text(color)
					.font(.title)
					.fontWeight(.bold)
				
			}
		}
			.navigationBarTitle(Text("Select background 🌈"))
		
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
