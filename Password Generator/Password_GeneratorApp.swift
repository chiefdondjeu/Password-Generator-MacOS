//
//  Password_GeneratorApp.swift
//  Password Generator
//
//  Created by Florent Dondjeu Tschoufack on 6/19/22.
//

import SwiftUI

@main
struct Password_GeneratorApp: App {
    var body: some Scene {
        WindowGroup {
            TabView {
                GeneratorView()
                SavesView()
            }
            .padding()
            .frame(width: 400, height: 250)
        }
    }
}
