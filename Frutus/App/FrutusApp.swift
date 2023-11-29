//
//  FrutusApp.swift
//  Frutus
//
//  Created by Quest76 on 28.11.2023.
//

import SwiftUI

@main
struct FrutusApp: App {
  @AppStorage("isOnboarding") var isOnboarding: Bool = true
  
  var body: some Scene {
    WindowGroup {
      if isOnboarding {
        OnboardingView()
      } else {
        ContentView()
      }
    }
  }
}
