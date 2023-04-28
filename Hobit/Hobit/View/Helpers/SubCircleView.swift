//
//  SubCircleView.swift
//  Hobit
//
//  Created by Edward Fu on 4/14/23.
//

import SwiftUI

struct SubCircleView: View {
    
    @Binding var subcircleCompletion: [Bool]
    var index: Int
    
    var body: some View {
        ZStack {
            Circle()
                .fill(subcircleCompletion[index] ? Color.green : Color.gray)
                .frame(width: 30, height: 30)
            Image(systemName: "checkmark")
                .foregroundColor(.white)
                .opacity(subcircleCompletion[index] ? 1 : 0)
        }
        .onTapGesture {
            subcircleCompletion[index].toggle() 
        }
        
    }
    
}
