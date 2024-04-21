//
//  TaskManager.swift

import Foundation

protocol ITaskManager {
	func allTasks() -> [Task]
	func completedTasks() -> [Task]
	func uncompletedTasks() -> [Task]
	func getTaskForIndex(_ indexPath: IndexPath) -> Task
	func sortedTasks(_ tasks: [Task]) -> [Task]
}

final class TaskManager: ITaskManager {

	let taskStorage = TaskStorage.shared

	func allTasks() -> [Task] {
		taskStorage.taskList
	}

	func completedTasks() -> [Task] {
		taskStorage.taskList.filter { $0.completed }
	}

	func uncompletedTasks() -> [Task] {
		taskStorage.taskList.filter { !$0.completed }
	}

	func getTaskForIndex(_ indexPath: IndexPath) -> Task {
		taskStorage.taskList[indexPath.row]
	}

	func sortedTasks(_ tasks: [Task]) -> [Task] {

		return tasks
	}
}
