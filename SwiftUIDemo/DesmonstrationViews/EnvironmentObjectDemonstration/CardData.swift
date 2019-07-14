//
//  CardData.swift
//  SwiftUIDemo
//
//  Created by Hien Quang Tran on 7/14/19.
//  Copyright © 2019 Hien Quang Tran. All rights reserved.

import SwiftUI
import Combine

final class CardData: BindableObject {
	
	private(set) var didChange = PassthroughSubject<CardData, Never>()
	
	var title: String = "" {
		didSet { didChange.send(self) }
	}
	
	var tag: String = "" {
		didSet { didChange.send(self) }
	}
	
	var image: String = "" {
		didSet { didChange.send(self) }
	}
	
	var color: String = "" {
		didSet { didChange.send(self) }
	}
	
	func updateColor(_ color: String) {
		self.color = color
	}
}

