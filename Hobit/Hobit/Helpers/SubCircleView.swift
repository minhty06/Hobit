//
//  SubCircleView.swift
//  Hobit
//
//  Created by Edward Fu on 4/14/23.
//

import SwiftUI

struct SubCircleView: View {
    
    let index: Int
       let completionHandler: (Int, Bool) -> Void
       
       @State private var isComplete = false
       
       var body: some View {
           ZStack {
               Circle()
                   .fill(isComplete ? Color.green : Color.gray)
                   .frame(width: 30, height: 30)
               Image(systemName: "checkmark")
                   .foregroundColor(.white)
                   .opacity(isComplete ? 1 : 0)
           }
           .onTapGesture {
               isComplete.toggle()
               completionHandler(index, isComplete)
           }
       }
}
