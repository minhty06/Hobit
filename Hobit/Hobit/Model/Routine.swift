//
//  Routine.swift
//  Hobit
//
//  Created by Edward Fu on 4/18/23.
//

import Foundation


struct Routine {
    var name: String
    var detail: String
    var tasks: [Task]
}

struct Task{
    var taskName: String
    var subcircleCompletion: Bool
}
