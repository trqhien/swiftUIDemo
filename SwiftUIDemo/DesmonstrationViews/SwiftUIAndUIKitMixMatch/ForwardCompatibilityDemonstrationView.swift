//
//  ForwardCompatibilityDemonstrationView.swift
//  SwiftUIDemo
//
//  Created by Hien Quang Tran on 7/12/19.
//  Copyright © 2019 Hien Quang Tran. All rights reserved.
//

import SwiftUI
import UIKit

struct ForwardCompatibilityDemonstrationView : View {
	@State private var textInput: String = ""
	
    var body: some View {
		// TODO: Refactor this view
		VStack(alignment: .leading) {
			TextField($textInput, placeholder: Text("Enter somthing"))
			
			Divider()
				.frame(height: 2)
				.background(Color.oceanBlue)
			
			Spacer().frame(height: 36)
			
			MyUIKitViewRepresentable(textInput: $textInput)
				.frame(height: 200)
		}
			.padding(50)
			.navigationBarTitle(Text("Forward Compatibility 💈"))
    }
}

#if DEBUG
struct ForwardCompatibilityDemonstrationView_Previews : PreviewProvider {
    static var previews: some View {
		NavigationView {
			ForwardCompatibilityDemonstrationView()			
		}
    }
}
#endif
