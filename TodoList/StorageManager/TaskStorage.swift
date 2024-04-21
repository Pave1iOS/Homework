//
//  TaskStorage.swift
//  TodoList
//
//  Created by Pavel Gribachev on 21.04.2024.
//

import Foundation

protocol ITaskStorage {
	var taskList: [Task] { get }

	func addTask(_ task: Task)
	func addTasks(_ tasks: [Task])
	func removeTask(_ task: Task)
}

final class TaskStorage: ITaskStorage {
	static let shared = TaskStorage()
	var taskList: [Task] = []

	private init () {}

	func addTask(_ task: Task) {
		taskList.append(task)
	}

	func addTasks(_ tasks: [Task]) {
		taskList.append(contentsOf: tasks)
	}

	func removeTask(_ task: Task) {
		taskList.removeAll { $0 === task }
	}
}
