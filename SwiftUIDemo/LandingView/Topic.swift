//
//  Topic.swift
//  SwiftUIDemo
//
//  Created by Hien Quang Tran on 7/11/19.
//  Copyright © 2019 Hien Quang Tran. All rights reserved.
//

import SwiftUI

struct Topic: Identifiable {
	let id: String
	let title: String
	let tag: String
	let image: String
	let color: String
}

extension Topic: Hashable {
	static func ==(lhs: Topic, rhs: Topic) -> Bool {
		return lhs.id == rhs.id
			&& lhs.title == rhs.title
			&& lhs.tag == rhs.tag
			&& lhs.image == rhs.image
			&& lhs.color == rhs.color
	}
	
	func hash(into hasher: inout Hasher) {
		hasher.combine(id)
		hasher.combine(title)
		hasher.combine(tag)
		hasher.combine(image)
		hasher.combine(color)
	}
}
