//
//  SecondLessonOtusApp.swift
//  SecondLessonOtus
//
//  Created by Влад Калаев on 17.01.2021.
//

import SwiftUI
import Core

@main
struct SecondLessonOtusApp: App {
    var body: some Scene {
        WindowGroup {
            let _ = AppConfig.shared
            RootView().environmentObject(Router())
                .environmentObject(RecipesViewModel())
        }
    }
}
