//
//  HobitApp.swift
//  Hobit
//
//  Created by Minh Ton on 4/10/23.
//

import SwiftUI

@main
struct HobitApp: App {
    @StateObject private var viewModel = RoutineViewModel()
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(viewModel)
        }
    }
}
