//
//  Tasks.swift

import Foundation

protocol ITask {
	var title: String { get }
	var completed: Bool { get }
}

class Task: ITask {
	var title: String
	var completed = false

	init(title: String, completed: Bool = false) {
		self.title = title
		self.completed = completed
	}
}

final class RegularTask: Task { }
