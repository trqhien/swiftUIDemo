//
//  BindableObjectDemonstrationView.swift
//  SwiftUIDemo
//
//  Created by Hien Quang Tran on 7/9/19.
//  Copyright © 2019 Hien Quang Tran. All rights reserved.
//

import SwiftUI
import Combine

struct BindableObjectDemonstrationView : View {
	@ObjectBinding var style = Style()
	
	var body: some View {
		VStack(alignment: .center) {
			Text("🤘🏽Hello World🤘🏽")
				.font(.title)
				.fontWeight(.bold)
				.padding()
				.background(Color.spotify)
				.cornerRadius(style.isCornerRadiusEnable ? style.cornerRadius : 0)
				.animation(.basic(duration: 0.3, curve: .easeInOut))
			
			Spacer()
				.frame(height: 100)
			
			Toggle(isOn: $style.isCornerRadiusEnable) {
				Text("Enable Corner Radius")
					.font(.headline)
			}
			
			Stepper(value: $style.cornerRadius, in: 5...35, step: 5) {
				Text("Corner Radius: \(style.isCornerRadiusEnable ? style.cornerRadius : 0, specifier: "%g")")
					.font(.headline)
				}
				.disabled(!style.isCornerRadiusEnable)
			}
			.frame(width: 300, height: 400)
	}
}

#if DEBUG
struct BindableObjectDemonstrationView_Previews : PreviewProvider {
    static var previews: some View {
        BindableObjectDemonstrationView()
    }
}
#endif

final class Style: BindableObject {
	private(set) var backgrounColor: Color = .spotify {
		didSet { didChange.send() }
	}
	
	private(set) var isCornerRadiusEnable  = false {
		didSet { didChange.send() }
	}
	
	private(set) var cornerRadius: CGFloat = 10 {
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
