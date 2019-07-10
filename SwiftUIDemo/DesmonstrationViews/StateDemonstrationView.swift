//
//  StateDemonstrationView.swift
//  SwiftUIDemo
//
//  Created by Hien Quang Tran on 7/9/19.
//  Copyright © 2019 Hien Quang Tran. All rights reserved.
//

import SwiftUI

struct StateDemonstrationView : View {
	@State var isCornerRadiusEnable = false
	
	var body: some View {
		VStack(alignment: .center) {
			Text("🤘🏽Hello World🤘🏽")
				.font(.title)
				.fontWeight(.bold)
				.padding()
				.background(Color.spotify)
				.cornerRadius(isCornerRadiusEnable ? 20 : 0)
				.animation(.basic(duration: 0.3, curve: .easeInOut))
			
			Spacer()
				.frame(height: 100)
			
			Toggle(isOn: $isCornerRadiusEnable) {
				Text("Enable Corner Radius")
					.font(.headline)
			}
		}
			.frame(width: 300, height: 400)
	}
}

#if DEBUG
struct StateDemonstrationView_Previews : PreviewProvider {
    static var previews: some View {
        StateDemonstrationView()
    }
}
#endif
