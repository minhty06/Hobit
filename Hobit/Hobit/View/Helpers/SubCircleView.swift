//
//  SubCircleView.swift
//  Hobit
//
//  Created by Edward Fu on 4/14/23.
//

import SwiftUI

struct SubCircleView: View {
    let index: Int
    @Binding var subcircleCompletion: [Bool]
    let routine: Routine
    
    var body: some View {
        ZStack {
            Circle()
                .fill(routine.subcircleCompletion ? Color.green : Color.gray)
                .frame(width: 30, height: 30)
            Image(systemName: "checkmark")
                .foregroundColor(.white)
                .opacity(routine.subcircleCompletion ? 1 : 0)
        }
        .onTapGesture {
            subcircleCompletion[index] = !routine.subcircleCompletion
        }
    }
    
}

