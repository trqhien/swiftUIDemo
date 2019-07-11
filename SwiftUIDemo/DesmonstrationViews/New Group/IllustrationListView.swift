//
//  IllustrationListView.swift
//  SwiftUIDemo
//
//  Created by Hien Quang Tran on 7/10/19.
//  Copyright © 2019 Hien Quang Tran. All rights reserved.
//

import SwiftUI

struct IllustrationListView : View {
	let illustrations = [
		Illustration(id: "a", image: "apple-glass", thumbnail: "sushi", title: "Apple & Glasses", intro: "Cover illustrations for Wall Street Journal, about families buying multiple units in real estate developments."),
		Illustration(id: "b", image: "bmw", thumbnail: "ducati", title: "Ducati Panigale V4", intro: "It is called Panigale V4 and it marks a new and important chapter in Ducati's history, a symphony of performance and emotions that's 100% Italian."),
		Illustration(id: "c", image: "detox", thumbnail: "profile-pic", title: "What is Lorem Ipsum?", intro: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book"),
		Illustration(id: "d", image: "fruit-cactus", thumbnail: "profile-pic-1", title: "Social Media Today", intro: "What is Social Media and why is it important?."),
		Illustration(id: "e", image: "sushi-dribbble", thumbnail: "sushi-hug", title: "Sushi Time", intro: "Octopus ramen and sushi, which one ?"),
		Illustration(id: "f", image: "sushi-fly", thumbnail: "sushi-gang", title: "Sushi Gang", intro: "This is dedicated to everyone who loves sushi as much as I do! 🍣."),
		Illustration(id: "g", image: "portrait", thumbnail: "pattern-matching", title: "Patern Matching", intro: "Pattern matching and type safety in typescript."),
		Illustration(id: "h", image: "delat-dribble-final", thumbnail: "skull-profile-pic", title: "FUN FACT", intro: "The creature that kills the most people every year isn't snakes, sharks, or even other humans — it's the mosquito."),
		Illustration(id: "i", image: "sushi-ramen", thumbnail: "sushi-dribbble", title: "Sushi Facts", intro: "Once upon a time, sushi didn't require a platinum credit card to enjoy. Sushi caught on originally as a cheap, quick snack to eat with the hands while enjoying a theater performance. Forget the popcorn: pass the sushi!.")
	]
	
    var body: some View {
		List {
			ForEach(illustrations.identified(by: \.id)) { illustration in
				NavigationButton(destination: IllustrationView(image: illustration.image)) {
					IllustrationCell(illustration: illustration)
				}
			}
		}.navigationBarTitle(Text("Illustrations"))
	}
}

#if DEBUG
struct IllustrationListView_Previews : PreviewProvider {
    static var previews: some View {
		NavigationView {
        	IllustrationListView()
		}
    }
}
#endif
