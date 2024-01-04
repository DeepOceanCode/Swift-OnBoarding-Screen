//
//  SnackOverflowApp.swift
//  SnackOverflow
//
//  Created by Yunus Emre Berdibek on 3.01.2024.
//

import SwiftUI

@main
struct SnackOverflowApp: App {
    @AppStorage("isOnBoarding") var isOnBoarding: Bool = true

    var body: some Scene {
        WindowGroup {
            if isOnBoarding {
                OnBoardView()
            } else {
                EmptyView()
            }
        }
    }
}
