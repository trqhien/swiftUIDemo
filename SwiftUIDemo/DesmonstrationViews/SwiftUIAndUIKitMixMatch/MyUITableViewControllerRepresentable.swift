//
//  MyUITableViewControllerRepresentable.swift
//  SwiftUIDemo
//
//  Created by Hien Quang Tran on 7/13/19.
//  Copyright © 2019 Hien Quang Tran. All rights reserved.
//

import SwiftUI
import Combine

struct MyUITableViewControllerRepresentable: UIViewControllerRepresentable {
	
	final class Coordinator: NSObject, UITableViewDelegate {
		let parent: MyUITableViewControllerRepresentable
		
		init(_ parent: MyUITableViewControllerRepresentable) {
			self.parent = parent
		}
		
		func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
			tableView.deselectRow(at: indexPath, animated: true)
			parent.selectedImage = parent.images[indexPath.row]
		}
	}
	
	private let images = [
		"bus-stop",
		"architecture",
		"campfire",
		"ladybug",
		"paddle",
		"robot",
		"rubik",
		"trumpet",
		"work-overtime",
		"workflow",
		"online-dating",
		"sushi-gang",
		"dark-sushi",
		"biker",
		"cityscapes",
		"future-public-transport",
		"exoskeleton",
		"fruits-world",
		"gameboy",
		"gameboy",
		"motorbike",
		"on-the-scooter",
		"roadtrip",
		"printer",
		"running",
		"scooter",
		"visit-on-mars",
	]
	
	@Binding private(set) var selectedImage: String
	
	func makeUIViewController(context: Context) -> MyTableViewController {
		let vc = MyTableViewController(images: images)
		vc.tableView.delegate = context.coordinator
		return vc
	}
	
	func updateUIViewController(_ uiViewController: MyTableViewController, context: Context) {}
	
	func makeCoordinator() -> MyUITableViewControllerRepresentable.Coordinator {
		let coordinator = Coordinator(self)
		return coordinator
	}
}

final class MyTableViewController: UITableViewController {
	
	private let images: [String]
	
	init(images: [String]) {
		self.images = images
		super.init(style: .plain)

		tableView.register(PosterCell.self, forCellReuseIdentifier: "Cell")
	}
	
	required init?(coder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		tableView.estimatedRowHeight = 114
		tableView.rowHeight = UITableView.automaticDimension
		
		tableView.register(PosterCell.self, forCellReuseIdentifier: "Cell")
	}
	
	override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return images.count
	}
	
	override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
		cell.imageView?.image = UIImage(named: images[indexPath.row])
		cell.textLabel?.text = images[indexPath.row]
		return cell
	}
}

final class PosterCell: UITableViewCell {
	
	private let thumbnail: UIImageView = {
		let icon = UIImageView()
		icon.translatesAutoresizingMaskIntoConstraints = false
		icon.contentMode = .scaleAspectFit
		return icon
	}()
	
	private let nameLabel: UILabel = {
		let label = UILabel()
		label.translatesAutoresizingMaskIntoConstraints = false
		label.font = UIFont.systemFont(ofSize: 18)
		return label
	}()
	
	override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
		super.init(style: style, reuseIdentifier: reuseIdentifier)
		
		contentView.layoutMargins = UIEdgeInsets(top: 8, left: 12, bottom: 8, right: 12)
		setupViews()
	}
	
	required init?(coder aDecoder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}
	
	private func setupViews() {
		contentView.addSubview(thumbnail)
		contentView.addSubview(nameLabel)
		
		NSLayoutConstraint.activate([
			thumbnail.topAnchor.constraint(equalTo: contentView.layoutMarginsGuide.topAnchor),
			thumbnail.bottomAnchor.constraint(equalTo: contentView.layoutMarginsGuide.bottomAnchor),
			thumbnail.widthAnchor.constraint(equalToConstant: 120),
			thumbnail.heightAnchor.constraint(equalToConstant: 90),
			thumbnail.leftAnchor.constraint(equalTo: contentView.layoutMarginsGuide.leftAnchor),
			
			nameLabel.leftAnchor.constraint(equalTo: thumbnail.rightAnchor, constant: 12),
			nameLabel.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
			nameLabel.rightAnchor.constraint(lessThanOrEqualTo: contentView.layoutMarginsGuide.rightAnchor)
		])
	}
}

#if DEBUG
//struct MyUITableViewControllerRepresentable_Previews: PreviewProvider {
//    static var previews: some View {
//		NavigationView {
//			MyUITableViewControllerRepresentable()
//		}
//    }
//}
#endif
