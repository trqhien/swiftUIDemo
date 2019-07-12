//
//  IllustrationView.swift
//  SwiftUIDemo
//
//  Created by Hien Quang Tran on 7/11/19.
//  Copyright © 2019 Hien Quang Tran. All rights reserved.
//

import SwiftUI

struct IllustrationView: View {
	let image: String
	
	var body: some View {
		HStack {
			Image(image)
				.resizable()
				.aspectRatio(contentMode: .fit)
		}
	}
}


#if DEBUG
struct IllustrationView_Previews : PreviewProvider {
    static var previews: some View {
        IllustrationView(image: "sushi-ramen")
    }
}
#endif
