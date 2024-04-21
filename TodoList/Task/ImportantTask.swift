//
//  ImportantTask.swift
//  TodoList
//
//  Created by Pavel Gribachev on 21.04.2024.
//

import Foundation

protocol ITaskPriority {
	var description: String { get }
	var sortIndex: Int { get }
}

enum TaskPriority: ITaskPriority {
	case low
	case medium
	case high

	var description: String {
		switch self {
		case .high:
			return "!!!"
		case .medium:
			return "!!"
		case .low:
			return "!"
		}
	}

	var sortIndex: Int {
		switch self {
		case .low:
			2
		case .medium:
			1
		case .high:
			0
		}
	}
}

final class ImportantTask: Task {
	var date: Date
	var taskPriority: TaskPriority

	var deadLine: Date {
		switch taskPriority {
		case .low:
			return Calendar.current.date(byAdding: .day, value: 3, to: date)! // swiftlint:disable:this force_unwrapping
		case .medium:
			return Calendar.current.date(byAdding: .day, value: 2, to: date)! // swiftlint:disable:this force_unwrapping
		case .high:
			return Calendar.current.date(byAdding: .day, value: 1, to: date)! // swiftlint:disable:this force_unwrapping
		}
	}

	init(title: String, date: Date, taskPriority: TaskPriority) {
		self.taskPriority = taskPriority
		self.date = date
		super.init(title: title)
	}
}
