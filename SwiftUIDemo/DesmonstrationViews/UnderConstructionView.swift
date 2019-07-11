//
//  UnderConstructionView.swift
//  SwiftUIDemo
//
//  Created by Hien Quang Tran on 7/10/19.
//  Copyright © 2019 Hien Quang Tran. All rights reserved.
//

import SwiftUI

struct UnderConstructionView : View {
    var body: some View {
		VStack {
			Image("under-construction")
				.resizable()
				.aspectRatio(1, contentMode: .fill)
				.frame(width: 300, height: 300)
			Text("🚧 This screen is under construction! 🚧")
				.font(.system(size: 18))
				.fontWeight(.bold)
		}
    }
}
let stateTopic = Topic(id: "1.2", title: "@State", tag: "Data Bindings", image: "ladybug", color: "eggplant")

struct SomeViewConformingToViewProtocol: View {
	var body: some View {
		VStack {
//			Image("fire-hydrant-icon")
//				.resizable()
//				.aspectRatio(1, contentMode: .fill)
//				.frame(width: 80, height: 80)
//				.border(Color.black, width: 1)
			
			Text("Hello from SwiftUI!")
				.font(.largeTitle)
				.fontWeight(.heavy)
			
//			NavigationButton(destination: StateDemonstrationView()) {
//				CardView(topic: stateTopic)
//			}
			
			
		}
	}
}

#if DEBUG
struct UnderConstructionView_Previews : PreviewProvider {
    static var previews: some View {
        UnderConstructionView()
    }
}
#endif
