//
//  LandingView.swift
//  SwiftUIDemo
//
//  Created by Hien Quang Tran on 7/5/19.
//  Copyright © 2019 Hien Quang Tran. All rights reserved.
//

import SwiftUI

struct LandingView : View {
	
    private let topics = [
		Topic(id: "1.1", title: "Views Hierarchy", tag: "Views & Modifiers", image: "bus-stop", color: "mango"),
		Topic(id: "2.1", title: "@State", tag: "Data Bindings", image: "ladybug", color: "eggplant"),
		Topic(id: "2.2", title: "BindableObject", tag: "Data Bindings", image: "workflow", color: "potato"),
	]

    var body: some View {
		NavigationView {
			ScrollView(alwaysBounceHorizontal: false) {
				ScrollView(showsHorizontalIndicator: false) {
					HStack(spacing: 30) {
						ForEach(topics) { topic in
							CardView(topic: topic)
						}
					}
						.padding(20)
				}
					.frame(width: UIScreen.main.bounds.width, height: 340)
				
				ScrollView(showsHorizontalIndicator: false) {
					HStack(spacing: 30) {
						ForEach(topics) { topic in
							CardView(topic: topic)
						}
						}
						.padding(20)
					}
					.frame(width: UIScreen.main.bounds.width, height: 340)
				
				ScrollView(showsHorizontalIndicator: false) {
					HStack(spacing: 30) {
						ForEach(topics) { topic in
							CardView(topic: topic)
						}
						}
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
