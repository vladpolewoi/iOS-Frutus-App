//
//  OnboardingView.swift
//  Frutus
//
//  Created by Quest76 on 28.11.2023.
//

import SwiftUI

struct OnboardingView: View {
  var body: some View {
    TabView {
      ForEach(0..<5) { item in
        FruitCardView()
      }
    }
    .tabViewStyle(PageTabViewStyle())
    .padding(.vertical, 20)
  }
}

#Preview {
  OnboardingView()
}
