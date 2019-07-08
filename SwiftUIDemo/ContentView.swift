//
//  ContentView.swift
//  SwiftUIDemo
//
//  Created by Hien Quang Tran on 7/5/19.
//  Copyright © 2019 Hien Quang Tran. All rights reserved.
//

import SwiftUI

struct ContentView : View {
	@ObjectBinding var style = Style()
	
    var body: some View {
		VStack(alignment: .center, spacing: 100) {
			Text("🤘🏽Hello World🤘🏽")
				.font(.title)
				.fontWeight(.bold)
				.padding()
				.background(style.backgrounColor)
				.animation(Animation.basic(duration: 0.4, curve: .easeInOut))
			
			Button(action: { self.style.randomizeEverything() }) {
				Text("Change Color")
					.font(.title)
					.fontWeight(.bold)
					.color(.white)
					.padding()
					.background(Color.lightWatermelon)
					.cornerRadius(10)
			}
		}
			.frame(width: 300, height: 400)
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif

import Combine

final class Style: BindableObject {
	private(set) var backgrounColor: Color = .spotify {
		didSet { didChange.send() }
	}
	
	func randomizeEverything() {
		let red = Int.random(in: 0...255)
		let green = Int.random(in: 0...255)
		let blue = Int.random(in: 0...255)
		
		backgrounColor = Color.rbg(red, green, blue)
	}
	
	var didChange = PassthroughSubject<Void, Never>()
}

/*
VStack(alignment: .center, spacing: 100) {
Text("🤘🏽Hello World🤘🏽")
.font(.title)
.padding()
.background(style.backgrounColor)

Button(action: { /* randomize color */ }) {
Text("Change Color")
.font(.title)
.color(.white)
.padding()
.background(Color.lightWatermelon)
.cornerRadius(10)
}
}
.frame(width: 300, height: 400)
*/

