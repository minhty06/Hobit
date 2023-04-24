//
//  HobitApp.swift
//  Hobit
//
//  Created by Minh Ton on 4/10/23.
//

import SwiftUI

@main
struct HobitApp: App {
    @StateObject private var viewModel = HobitViewModel()
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(viewModel)
        }
    }
}
