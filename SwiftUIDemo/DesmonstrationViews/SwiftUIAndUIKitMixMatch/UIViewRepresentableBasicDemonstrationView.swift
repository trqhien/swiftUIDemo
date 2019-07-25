//
//  UIViewRepresentableBasicDemonstrationView.swift
//  SwiftUIDemo
//
//  Created by Hien Quang Tran on 7/15/19.
//  Copyright © 2019 Hien Quang Tran. All rights reserved.
//

import SwiftUI

struct UIViewRepresentableBasicDemonstrationView : View {
    var body: some View {
		VStack(alignment: .leading) {
			MyUIViewBasicRepresentable()
				.frame(height: 200)
		}
			.padding(50)
			.navigationBarTitle(Text("Forward Compatibility"))
    }
}

#if DEBUG
struct UIViewRepresentableBasicDemonstrationView_Previews : PreviewProvider {
    static var previews: some View {
        UIViewRepresentableBasicDemonstrationView()
    }
}
#endif
