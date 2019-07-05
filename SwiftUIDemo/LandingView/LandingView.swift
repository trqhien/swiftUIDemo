//
//  LandingView.swift
//  SwiftUIDemo
//
//  Created by Hien Quang Tran on 7/5/19.
//  Copyright © 2019 Hien Quang Tran. All rights reserved.
//

import SwiftUI

struct LandingView : View {
    @State var show = false
    @State var showCertificates = false
    @State var viewState = CGSize.zero
//    var menu: [Menu] = menuData

    var body: some View {
        ZStack {

            HomeList(courses: coursesData).padding(.top, 78)
                .blur(radius: show ? 50 : 0)
                .scaleEffect(showCertificates ? 0.95 : 1)
                .animation(.default)

            MenuButton(show: $show)

            MenuRight(showCertificates: $showCertificates)

            MenuView(menu: menu)
                .rotation3DEffect(Angle(degrees: show ? 0 : 60), axis: (x: 0, y: 10.0, z: 0))
                .animation(.basic(duration: 0.3, curve: .easeInOut))
                .offset(x: show ? 0 : -UIScreen.main.bounds.width)
                .tapAction {
                    self.show.toggle()
            }

            ContentView()
                .cornerRadius(30)
                .shadow(color: Color("buttonShadow"), radius: 50, x: 0, y: 0)
                .offset(y: showCertificates ? 0 : screen.height + 100)
                .rotationEffect(Angle(degrees: showCertificates ? 0 : -20))
                .animation(.basic(duration: 0.3, curve: .easeInOut))
                .tapAction {
                    self.showCertificates.toggle()
            }
            }
            .edgesIgnoringSafeArea(.all)
    }
}

#if DEBUG
struct LandingView_Previews : PreviewProvider {
    static var previews: some View {
        LandingView()
    }
}
#endif
