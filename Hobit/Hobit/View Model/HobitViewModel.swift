//
//  HobitViewModel.swift
//  Hobit
//
//  Created by Edward Fu on 4/18/23.
//

import SwiftUI

class HobitViewModel: ObservableObject {
    
    @Published private var model: PublicData = PublicData()

    var RoutinePosts: [Routine]{
        model.sampleData
    }
    
    func setRoutineCompletion(atIndex index: Int, toCompletion completion: Bool) {
        guard index < model.sampleData.count else { return }
            model.sampleData[index].subcircleCompletion = completion
        }
    
}


