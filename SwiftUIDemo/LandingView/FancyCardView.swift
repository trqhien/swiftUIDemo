//
//  FancyCardView.swift
//  SwiftUIDemo
//
//  Created by Hien Quang Tran on 7/10/19.
//  Copyright © 2019 Hien Quang Tran. All rights reserved.
//

import SwiftUI

struct FancyCardView : View {
	
	let topic: Topic
	
    var body: some View {
		ZStack(alignment: .bottom) {
			Image(topic.image)
				.resizable()
				.renderingMode(.original)
				.aspectRatio(4/3, contentMode: .fit)
			
			VStack(alignment: .leading) {
				
				Text("CARD OF THE DAY")
					.font(Font.largeTitle)
					.fontWeight(.heavy)
					.foregroundColor(Color.white)
					.frame(width: 180)
					.lineLimit(3)
				
				HStack {
					VStack(alignment: .leading) {
						Text(topic.tag)
							.font(.subheadline)
							.foregroundColor(Color.spotify)
						
						Text(topic.title)
							.font(.title)
							.fontWeight(.bold)
							.foregroundColor(Color.white)
						}
					
					Spacer()
				}
					.padding()
					.background(Color(white: 0, opacity: 0.8))
			}
			
			
			
		}
			.cornerRadius(20)
			.shadow(color: .gray, radius: 8, x: 5, y: 2)
    }
}

#if DEBUG
struct FancyCardView_Previews : PreviewProvider {
    static var previews: some View {
		FancyCardView(topic: Topic(id: "abc",
								   title: "Architech",
								   tag: "Architech",
								   image: "architecture",
								   color: "potato"))
    }
}
#endif
