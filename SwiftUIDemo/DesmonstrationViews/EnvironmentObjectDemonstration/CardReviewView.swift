//
//  CardReviewView.swift
//  SwiftUIDemo
//
//  Created by Hien Quang Tran on 7/11/19.
//  Copyright © 2019 Hien Quang Tran. All rights reserved.
//

import SwiftUI

struct CardReviewView: View {
	
	@EnvironmentObject private var cardData: CardData
	
    var body: some View {
		CardView(topic: Topic(id: "",
							  title: cardData.title,
							  tag: cardData.tag,
							  image: cardData.image,
							  color: cardData.color))
    }
}

#if DEBUG
struct CardReviewView_Previews: PreviewProvider {
    static var previews: some View {
        CardReviewView()
			.environmentObject(CardData())
    }
}
#endif
