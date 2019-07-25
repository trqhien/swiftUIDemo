//
//  LandingView.swift
//  SwiftUIDemo
//
//  Created by Hien Quang Tran on 7/5/19.
//  Copyright © 2019 Hien Quang Tran. All rights reserved.
//

import SwiftUI

struct LandingView: View {
	
	let viewHierachyTopic = Topic(id: "1.1", title: "Views Hierarchy", tag: "Views & Modifiers", image: "bus-stop", color: "mango")
	let stateTopic = Topic(id: "1.2", title: "@State", tag: "Data Bindings", image: "ladybug", color: "eggplant")
	let bindableObjectTopic = Topic(id: "1.3", title: "BindableObject", tag: "Data Bindings", image: "workflow", color: "potato")
	let layoutDemonstrationTopic = Topic(id: "1.4", title: "Layout", tag: "Graphic Effects", image: "robot", color: "purpleSweetPotato")
	let navigationDemonstrationTopic = Topic(id: "1.5", title: "Navigation", tag: "Navigation", image: "biker", color: "cement")
	let environmentObjectTopic = Topic(id: "1.6", title: "@EnviromentObject", tag: "Indirect Data Binding", image: "great-heat", color: "mint")
	let forwardCompatibilityBasicTopic = Topic(id: "1.7", title: "UIViewRepresentable", tag: "Forward Compatibility", image: "work-overtime", color: "darkSkyBlue")
	let forwardCompatibilityTopic = Topic(id: "1.8", title: "Coordinator", tag: "Forward Compatibility", image: "running", color: "taro")
	
	let destination = DynamicNavigationDestinationLink(id: \Topic.id, isDetail: true) { _ in
		BindableObjectDemonstrationView()
	}
	
	let sectionTwoTopics = [
		Topic(id: "2.1", title: "Trumpet", tag: "Musical", image: "trumpet", color: "ink"),
		Topic(id: "2.2", title: "Rubik", tag: "3D Combination Puzzle", image: "rubik", color: "strawberrySmoothie"),
		Topic(id: "2.3", title: "Work Overtime", tag: "Lifestyle", image: "online-dating", color: "ink"),
	]
	
	let sectionThreeTopics = [
		Topic(id: "3.1", title: "Architechture", tag: "UI & UX", image: "architecture", color: "potato"),
		Topic(id: "3.2", title: "Paddles", tag: "Sports", image: "paddle", color: "potato"),
		Topic(id: "3.3", title: "Campfire", tag: "Travel & Lifestyle", image: "ideal-office", color: "mint"),
		Topic(id: "3.4", title: "Roadtrip", tag: "Travel & Lifestyle", image: "roadtrip", color: "mint"),
	]

    var body: some View {
		NavigationView {
			List {
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
						
						NavigationButton(destination: IllustrationListView()) {
							CardView(topic: navigationDemonstrationTopic)
						}
						
						NavigationButton(destination: ChooseCardTitleView().environmentObject(CardData())) {
							CardView(topic: environmentObjectTopic)
						}
						
						NavigationButton(destination: UIViewRepresentableBasicDemonstrationView()) {
							CardView(topic: forwardCompatibilityBasicTopic)
						}
						
						NavigationButton(destination: UIViewRepresentableDemonstrationView()) {
							CardView(topic: forwardCompatibilityTopic)
						}
					}
						.padding(.leading, 20).padding(.trailing, 20)
				}
					.padding(-20).padding(.trailing, 40).padding(.top, 30)
					.frame(width: UIScreen.main.bounds.width, height: 320)
				
				ForEach(sectionTwoTopics.identified(by: \.id)) { topic in
					NavigationButton(destination: UnderConstructionView()) {
						TopicDetailCell(topic: topic)
							.frame(height: 86)
					}
				}
				
				ForEach(sectionThreeTopics.identified(by: \.id)) { topic in
					NavigationButton(destination: UnderConstructionView()) {
						FancyCardView(topic: topic)
							.frame(height: 311)
					}
				}
					.padding([.top, .bottom], -20)
			}
				.navigationBarTitle(Text("SwiftUI Demo ✌🏼"))
		}
    }
}

#if DEBUG
struct LandingView_Previews: PreviewProvider {
    static var previews: some View {
		ForEach(["iPhone XS Max", "iPhone SE"].identified(by: \.self)) { deviceName in
			LandingView()
				.previewDevice(PreviewDevice(rawValue: deviceName))
				.previewDisplayName(deviceName)
		}
    }
}
#endif

// TODO: - Refactor register pattern with AnyView
// Refactor TextField
// Section title for LandingView
// Add more color
