//
//  BasicNavigationDemonstrationView.swift
//  SwiftUIDemo
//
//  Created by Hien Quang Tran on 7/11/19.
//  Copyright © 2019 Hien Quang Tran. All rights reserved.
//

import SwiftUI

struct BasicNavigationDemonstrationView: View {
    var body: some View {
		NavigationView {
			NavigationButton(destination: SomeViewConformingToViewProtocol()) {
				Text("Tap here to navigate")
					.font(.title)
			}
		}
    }
}

#if DEBUG
struct BasicNavigationDemonstrationView_Previews: PreviewProvider {
    static var previews: some View {
        BasicNavigationDemonstrationView()
    }
}
#endif
