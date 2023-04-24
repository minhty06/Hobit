

import SwiftUI
import Foundation

class RoutineViewModel: ObservableObject {
    @Published var model: PublicData = PublicData()
    
    var routine: [Routine] {
        model.routineList
    }
    
    func setCompleted(_ routine: Routine, _ task: Task) {
        // set favorite
        model.toggleTaskCompletion(in: routine, for: task)
    }
    
//    func setTaskCompletion(atIndex index: Int, toCompletion completion: Bool) {
//        routine.tasks[index].completed = completion
//    }
//
//    func setRoutineCompletion(toCompletion completion: Bool) {
//        for index in 0..<routine.tasks.count {
//            routine.tasks[index].completed = completion
//        }
//    }
//
//    func checkCompletion() -> Bool {
//        // Check if all subcircles are complete
//        // If yes, set main circle to complete
//        // If no, leave main circle incomplete
//        return !routine.tasks.contains(where: { !$0.completed })
//    }
//    func addRoutine(_ routine: Routine) {
//        model.routineList.append(routine)
//    }

}


