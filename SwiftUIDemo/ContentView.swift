//
//  ContentView.swift
//  SwiftUIDemo
//
//  Created by Hien Quang Tran on 7/5/19.
//  Copyright © 2019 Hien Quang Tran. All rights reserved.
//

import SwiftUI

let topics = [
	Topic(id: "2.1", title: "Trumpet", tag: "Musical", image: "trumpet", color: "ink"),
	Topic(id: "2.2", title: "Rubik", tag: "3D Combination Puzzle", image: "rubik", color: "strawberrySmoothie"),
	Topic(id: "2.3", title: "Work Overtime", tag: "Lifestyle", image: "work-overtime", color: "ink"),
]

struct ContentView: View {
	@ObjectBinding var style = Style()
	
	var body: some View {
		VStack {
			ForEach(topics.identified(by: \.id)) { topic in
				TopicDetailCell(topic: topic)
			}
		}
	}
}



#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif

