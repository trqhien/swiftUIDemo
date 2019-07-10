//
//  ViewHierachyDemonstrationView.swift
//  SwiftUIDemo
//
//  Created by Hien Quang Tran on 7/9/19.
//  Copyright © 2019 Hien Quang Tran. All rights reserved.
//

import SwiftUI

struct ViewHierachyDemonstrationView : View {
	@ObjectBinding var style = Style()
	
	var body: some View {
		VStack(alignment: .center, spacing: 100) {
			Text("🤘🏽Hello World🤘🏽")
				.font(.title)
				.fontWeight(.bold)
				.padding()
				.background(style.backgrounColor)
				.animation(Animation.basic(duration: 0.4, curve: .easeInOut))
			
			Button(action: { self.style.randomizeEverything() }) {
				Text("Change Color")
					.font(.title)
					.fontWeight(.bold)
					.color(.white)
					.padding()
					.background(Color.lightWatermelon)
					.cornerRadius(10)
			}
		}
			.frame(width: 300, height: 400)
	}
}

#if DEBUG
struct ViewHierachyDemonstrationView_Previews : PreviewProvider {
    static var previews: some View {
        ViewHierachyDemonstrationView()
    }
}
#endif

//protocol RuntimeInitializable: View {
//	init()
//}

//extension RuntimeInitializable: View {
//
//}
//extension RuntimeInitializable where Self: View {
//	func asView() -> View {
//		return self as! View
//	}
	
//	var asView: some View {
//		self as! View
//	}
//}
