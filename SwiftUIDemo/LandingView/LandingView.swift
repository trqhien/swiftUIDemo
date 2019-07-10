//
//  LandingView.swift
//  SwiftUIDemo
//
//  Created by Hien Quang Tran on 7/5/19.
//  Copyright © 2019 Hien Quang Tran. All rights reserved.
//

import SwiftUI

struct LandingView : View {
	
	let viewHierachyTopic = Topic(id: "1.1", title: "Views Hierarchy", tag: "Views & Modifiers", image: "bus-stop", color: "mango")
	let stateTopic = Topic(id: "2.1", title: "@State", tag: "Data Bindings", image: "ladybug", color: "eggplant")
	let bindableObjectTopic = Topic(id: "2.2", title: "BindableObject", tag: "Data Bindings", image: "workflow", color: "potato")
	let layoutDemonstrationTopic = Topic(id: "4.1", title: "Layout", tag: "Graphic Effects", image: "robot", color: "purpleSweetPotato")
	
	let destination = DynamicNavigationDestinationLink(id: \Topic.id) { _ in
		BindableObjectDemonstrationView()
	}

    var body: some View {
		NavigationView {
			ScrollView(alwaysBounceHorizontal: false) {
				ScrollView(showsHorizontalIndicator: false) {
					HStack(spacing: 30) {
						NavigationButton(destination: ViewHierachyDemonstrationView(), isDetail: false) {
							CardView(topic: viewHierachyTopic)
						}
						
						NavigationButton(destination: StateDemonstrationView()) {
							CardView(topic: stateTopic)
						}
						
						NavigationButton(destination: destination, presenting: bindableObjectTopic) {
							CardView(topic: bindableObjectTopic)
						}
						
						NavigationButton(destination: RubikCubeWithBordersView()) {
							CardView(topic: layoutDemonstrationTopic)
						}
					}
//						.accentColor(Color.red)
						.padding(20)
				}
					.frame(width: UIScreen.main.bounds.width, height: 340)
			}.navigationBarTitle(Text("SwiftUI Demo ✌🏼"))
			
		}
    }
}

#if DEBUG
struct LandingView_Previews : PreviewProvider {
    static var previews: some View {
        LandingView()
    }
}
#endif

struct Topic: Identifiable {
	var id: String
	let title: String
	let tag: String
	let image: String
	let color: String
}

extension Topic: Hashable {
	static func ==(lhs: Topic, rhs: Topic) -> Bool {
		return lhs.id == rhs.id
			&& lhs.title == rhs.title
			&& lhs.tag == rhs.tag
			&& lhs.image == rhs.image
			&& lhs.color == rhs.color
	}
	
	func hash(into hasher: inout Hasher) {
		hasher.combine(id)
		hasher.combine(title)
		hasher.combine(tag)
		hasher.combine(image)
		hasher.combine(color)
	}
}
