//
//  RubikCubeWithBordersView.swift
//  SwiftUIDemo
//
//  Created by Hien Quang Tran on 7/10/19.
//  Copyright © 2019 Hien Quang Tran. All rights reserved.
//

import SwiftUI

struct RubikCubeWithBordersView: View {
	var body: some View {
		HStack(alignment: .center) {
			Text("Rubik Cube")
				.font(.largeTitle)
				.fontWeight(.bold)
				.layoutPriority(1)
				.border(Color.black, width: 1)
			
			Image("rubik-cube")
				.border(Color.black, width: 1)
			
			Text("is awesome")
				.border(Color.black, width: 1)
		}
			.frame(width: 320)
			.border(Color.red, width: 1)
	}
}

#if DEBUG
struct RubikCubeWithBordersView_Previews: PreviewProvider {
    static var previews: some View {
        RubikCubeWithBordersView()
    }
}
#endif
