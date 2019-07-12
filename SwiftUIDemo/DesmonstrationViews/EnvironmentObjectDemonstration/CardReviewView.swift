//
//  CardReviewView.swift
//  SwiftUIDemo
//
//  Created by Hien Quang Tran on 7/11/19.
//  Copyright © 2019 Hien Quang Tran. All rights reserved.
//

import SwiftUI

struct CardReviewView : View {
    var body: some View {
		CardView(topic: Topic(id: "1.1",
							  title: "Views & Modifiers",
							  tag: "Awesome Stuff",
							  image: "bus-stop",
							  color: "mango"))
//			.background(Color.strawberrySmoothie)
    }
}

#if DEBUG
struct CardReviewView_Previews : PreviewProvider {
    static var previews: some View {
        CardReviewView()
    }
}
#endif
