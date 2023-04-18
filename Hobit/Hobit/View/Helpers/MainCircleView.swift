//
//  MainCircleView.swift
//  Hobit
//
//  Created by Edward Fu on 4/14/23.
//

import SwiftUI

struct MainCircleView: View {
    let isComplete: Bool
       
       var body: some View {
           ZStack {
               Circle()
                   .fill(isComplete ? Color.green : Color.gray)
                   .frame(width: 30, height: 30)
               Image(systemName: "checkmark")
                   .foregroundColor(.white)
                   .opacity(isComplete ? 1 : 0)
           }
       }
}


