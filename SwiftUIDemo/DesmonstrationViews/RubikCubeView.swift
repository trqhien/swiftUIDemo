//
//  RubikCubeView.swift
//  SwiftUIDemo
//
//  Created by Hien Quang Tran on 7/10/19.
//  Copyright © 2019 Hien Quang Tran. All rights reserved.
//

import SwiftUI

struct RubikCubeView: View {
	var body: some View {
		HStack {
			Text("Rubik Cube")
				.font(.largeTitle)
				.fontWeight(.bold)
				.layoutPriority(1)
			
			Image("rubik-cube")
			
			Text("is awesome")
		}
	}
}

#if DEBUG
struct RubikCubeView_Previews: PreviewProvider {
    static var previews: some View {
        RubikCubeView()
    }
}
#endif
