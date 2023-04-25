//
//  Habit.swift
//  Hobit
//
//  Created by Edward Fu on 4/24/23.
//

import Foundation

struct Habit: Identifiable {
    var id: UUID = UUID()
    var habitName: String = ""
    var habitDetails: String = ""
    var habitDuration: Int = 0
    var tasks: [Task] = []
}
