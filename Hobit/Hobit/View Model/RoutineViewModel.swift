

import SwiftUI
import Foundation

class RoutineViewModel: ObservableObject {
    @Published var model: PublicData = PublicData()
    @Published var routine: Routine
    
    init(routine: Routine) {
        self.routine = routine
    }
    
    func setTaskCompletion(atIndex index: Int, toCompletion completion: Bool) {
        routine.tasks[index].subcircleCompletion = completion
    }
    
    func setRoutineCompletion(toCompletion completion: Bool) {
        for index in 0..<routine.tasks.count {
            routine.tasks[index].subcircleCompletion = completion
        }
    }
    
    func checkCompletion() -> Bool {
        // Check if all subcircles are complete
        // If yes, set main circle to complete
        // If no, leave main circle incomplete
        return !routine.tasks.contains(where: { !$0.subcircleCompletion })
    }
    func addRoutine(_ routine: Routine) {
        model.routineList.append(routine)
    }

}


