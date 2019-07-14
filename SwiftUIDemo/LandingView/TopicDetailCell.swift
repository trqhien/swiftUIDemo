//
//  TopicDetailCell.swift
//  SwiftUIDemo
//
//  Created by Hien Quang Tran on 7/10/19.
//  Copyright © 2019 Hien Quang Tran. All rights reserved.
//

import SwiftUI

struct TopicDetailCell: View {
	let topic: Topic
	
    var body: some View {
		HStack {
			Image(topic.image)
				.resizable()
				.aspectRatio(1, contentMode: .fit)
				.cornerRadius(12)
				.frame(width: 70)
			
			VStack(alignment: .leading, spacing: 5) {
				Text(topic.title)
					.font(.title)
					.lineLimit(1)
				
				Text(topic.tag)
					.font(.subheadline)
					.foregroundColor(Color.gray)
					.lineLimit(1)
			}
		}
			.padding(.top, 8).padding(.bottom, 8)
    }
}

#if DEBUG
struct TopicDetailCell_Previews: PreviewProvider {
    static var previews: some View {
		Group {
			TopicDetailCell(topic: Topic(id: "1.1",
										 title: "Rubik",
										 tag: "3D Combination Puzzle",
										 image: "trumpet",
										 color: "strawberrySmoothie"))

			TopicDetailCell(topic: Topic(id: "4.-2",
										 title: "Supreme",
										 tag: "Streetwear",
										 image: "supreme",
										 color: "strawberrySmoothie"))
		}
    }
}
#endif
