//
//  Color+AppColors.swift
//  SwiftUIDemo
//
//  Created by Hien Quang Tran on 7/8/19.
//  Copyright © 2019 Hien Quang Tran. All rights reserved.
//

import SwiftUI

extension Color {
	static let oceanBlue = Color("oceanBlue")
	static let watermelon = Color("watermelon")
	static let lightWatermelon = Color("lightWatermelon")
	static let spotify = Color("spotify")
}

extension Color {
	static func rbg(_ red: Int, _ green: Int, _ blue: Int) -> Color {
		return Color(
			red: Double(red)/Double(255),
			green: Double(green)/Double(255),
			blue: Double(blue)/Double(255))
	}
}
