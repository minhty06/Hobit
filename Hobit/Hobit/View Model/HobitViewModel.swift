//
//  HobitViewModel.swift
//  Hobit
//
//  Created by Edward Fu on 4/18/23.
//

import SwiftUI

class HobitViewModel: ObservableObject {
    
    @Published private var model: PublicData = PublicData()

    var RoutinePosts: Routine{
        model.routine
    }
    var RoutinePostsName: String{
        return model.routine.name
    }
    var RoutinePostsDetail: String{
        return model.routine.detail
    }
    
    func setRoutineCompletion(atIndex index: Int, toCompletion completion: Bool) {
        guard index < model.routine.tasks.count else { return }
        model.routine.tasks[index].subcircleCompletion = completion
        }
    
    func toggleSubcircleCompletion(at index: Int) {
        model.routine.tasks[index].subcircleCompletion.toggle()
    }
    func addRoutine(_ routine: Routine) {
        model.routine = routine
    }
    
    
    

}


