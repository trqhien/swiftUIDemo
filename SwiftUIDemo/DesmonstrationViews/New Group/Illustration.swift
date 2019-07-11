//
//  Illustration.swift
//  SwiftUIDemo
//
//  Created by Hien Quang Tran on 7/11/19.
//  Copyright © 2019 Hien Quang Tran. All rights reserved.
//

import SwiftUI

struct Illustration: Identifiable {
	let id: String
	let image: String
	let thumbnail: String
	let title: String
	let intro: String
}

extension Illustration: Hashable {
	static func ==(lhs: Illustration, rhs: Illustration) -> Bool {
		return lhs.id == rhs.id
			&& lhs.title == rhs.title
			&& lhs.thumbnail == rhs.thumbnail
			&& lhs.image == rhs.image
			&& lhs.intro == rhs.intro
	}
	
	func hash(into hasher: inout Hasher) {
		hasher.combine(id)
		hasher.combine(title)
		hasher.combine(thumbnail)
		hasher.combine(image)
		hasher.combine(intro)
	}
}
