//
//  ProgressCircle.swift
//  Hobit
//
//  Created by Lori Merone on 4/11/23.
//

import SwiftUI

struct ProgressCircle: View {
    var body: some View {
        ZStack {
            Circle()
                .stroke(
                    Color.lightGrey.opacity(0.5),
                    lineWidth: 10
                )
            Circle()
                .trim(from: 0, to: 10/27)
                .stroke(
                    Color.lightGrey,
                    // 1
                    style: StrokeStyle(
                        lineWidth: 10,
                        lineCap: .round
                    )
                )
                .rotationEffect(.degrees(-90))
            Text("10/27")
                .font(.title2)
                .foregroundColor(Color.white)
        }
        .frame(width: 80, height: 80
        )
    }
}

struct ProgressCircle_Previews: PreviewProvider {
    static var previews: some View {
        ProgressCircle()
    }
}
