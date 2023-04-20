//
//  HobitViewModel.swift
//  Hobit
//
//  Created by Edward Fu on 4/18/23.
//

import SwiftUI
import Foundation

//class HobitViewModel: ObservableObject {
//
////    @Published private var model: PublicData = PublicData()
////
////    var RoutinePosts: Routine{
////        model.routine
////    }
////    var RoutinePostsName: String{
////        return model.routine.name
////    }
////    var RoutinePostsDetail: String{
////        return model.routine.detail
////    }
////
////    func setRoutineCompletion(atIndex index: Int, toCompletion completion: Bool) {
////        guard index < model.routine.tasks.count else { return }
////        model.routine.tasks[index].subcircleCompletion = completion
////        }
////
////    func toggleSubcircleCompletion(at index: Int) {
////        model.routine.tasks[index].subcircleCompletion.toggle()
////    }
////    func addRoutine(_ routine: Routine) {
////        model.routine = routine
////    }
////
//
//}


class RoutineViewModel: ObservableObject {
    
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
         self.routine = routine
    }
}


