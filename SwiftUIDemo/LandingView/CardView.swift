//
//  CardView.swift
//  SwiftUIDemo
//
//  Created by Hien Quang Tran on 7/5/19.
//  Copyright © 2019 Hien Quang Tran. All rights reserved.
//

import SwiftUI

struct CardView : View {
	
	let topic: Topic
	
    var body: some View {
		VStack {
			HStack {
				VStack(alignment: .leading) {
					Text(topic.tag)
						.font(.subheadline)
						.foregroundColor(Color.oceanBlue)
					
					Text(topic.title)
						.font(.title)
						.fontWeight(.bold)
						.color(.primary)
					}
						.padding()
				
				Spacer()
			}
				.background(Color(white: 1, opacity: 0.8))
			
			Image(topic.image)
				.resizable()
				.renderingMode(.original)
				.aspectRatio(4/3, contentMode: .fill)
				.frame(width: 260)
		}
			.padding(.leading, 0)
			.background(Color(topic.color))
			.frame(width: 260, height: 300)
			.cornerRadius(20)
			.shadow(color: .gray, radius: 8, x: 5, y: 2)
    }
}

#if DEBUG
struct CardView_Previews : PreviewProvider {
    static var previews: some View {
		Group {
			CardView(topic: Topic(id: "1.1",
								  title: "Views & Modifiers",
								  tag: "Awesome Stuff",
								  image: "bus-stop",
								  color: "mango"))
			
			CardView(topic: Topic(id: "1.2",
								  title: "Bindings",
								  tag: "Cool Stuff",
								  image: "ladybug",
								  color: "eggplant"))
			
			CardView(topic: Topic(id: "4.1",
								  title: "Layout",
								  tag: "Graphic Effects",
								  image: "robot",
								  color: "purpleSweetPotato"))
			
		}
    }
}
#endif
