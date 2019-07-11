//
//  IllustrationCell.swift
//  SwiftUIDemo
//
//  Created by Hien Quang Tran on 7/11/19.
//  Copyright © 2019 Hien Quang Tran. All rights reserved.
//

import SwiftUI

struct IllustrationCell: View {
	let illustration: Illustration
	
	var body: some View {
		HStack {
			Image(illustration.thumbnail)
				.resizable()
				.aspectRatio(contentMode: .fill)
				.frame(width: 90, height: 90)
				.cornerRadius(12)
			
			VStack(alignment: .leading, spacing: 8) {
				Text(illustration.title)
					.font(.system(size: 25))
					.fontWeight(.bold)
				
				Text(illustration.intro)
					.font(.system(size: 17))
					.lineLimit(3)
					.foregroundColor(Color.gray)
			}
		}
	}
}

#if DEBUG
struct IllustrationCell_Previews : PreviewProvider {
    static var previews: some View {
        IllustrationCell(illustration: Illustration(id: "i", image: "sushi-ramen", thumbnail: "sushi-dribbble", title: "Sushi Facts", intro: "Once upon a time, sushi didn't require a platinum credit card to enjoy. Sushi caught on originally as a cheap, quick snack to eat with the hands while enjoying a theater performance. Forget the popcorn: pass the sushi!."))
    }
}
#endif
