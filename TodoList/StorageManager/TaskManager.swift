//
//  TaskManager.swift

protocol ITaskManager {
	func allTasks() -> [Task]
	func completedTasks() -> [Task]
	func uncompletedTasks() -> [Task]
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

	func sortedTasks(_ tasks: [Task]) -> [Task] {

		return tasks
	}
}
