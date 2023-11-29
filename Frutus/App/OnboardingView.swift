//
//  OnboardingView.swift
//  Frutus
//
//  Created by Quest76 on 28.11.2023.
//

import SwiftUI

struct OnboardingView: View {
  var fruits: [Fruit] = fruitsData
  
  var body: some View {
    TabView {
      ForEach(fruits[0...5]) { item in
        FruitCardView(fruit: item)
      }
    }
    .tabViewStyle(PageTabViewStyle())
    .padding(.vertical, 20)
  }
}

#Preview {
  OnboardingView()
}
