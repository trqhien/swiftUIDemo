//
//  UnderConstructionView.swift
//  SwiftUIDemo
//
//  Created by Hien Quang Tran on 7/10/19.
//  Copyright © 2019 Hien Quang Tran. All rights reserved.
//

import SwiftUI

struct UnderConstructionView : View {
    var body: some View {
		VStack {
			Image("fire-hydrant-icon")
			Text(/*@START_MENU_TOKEN@*/"Hello World!"/*@END_MENU_TOKEN@*/)
		}
    }
}

#if DEBUG
struct UnderConstructionView_Previews : PreviewProvider {
    static var previews: some View {
        UnderConstructionView()
    }
}
#endif
