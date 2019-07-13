//
//  ChooseCardImageView.swift
//  SwiftUIDemo
//
//  Created by Hien Quang Tran on 7/11/19.
//  Copyright © 2019 Hien Quang Tran. All rights reserved.
//

import SwiftUI

struct ChooseCardImageView : View {
    var body: some View {
        MyUITableViewControllerRepresentable()
			.navigationBarTitle(Text("Chose illustration 🌌"))
    }
}

#if DEBUG
struct ChooseCardImageView_Previews : PreviewProvider {
    static var previews: some View {
		NavigationView {
			ChooseCardImageView()			
		}
    }
}
#endif
