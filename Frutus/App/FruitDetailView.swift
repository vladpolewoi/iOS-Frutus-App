//
//  FruitDetailView.swift
//  Frutus
//
//  Created by Quest76 on 29.11.2023.
//

import SwiftUI

struct FruitDetailView: View {
  var fruit: Fruit
  
  var body: some View {
    NavigationView {
      ScrollView(.vertical, showsIndicators: false) {
        VStack(alignment: .center, spacing: 20) {
          // Header
          FruitHeaderView(fruit: fruit)
          
          VStack(alignment: .leading, spacing: 20) {
            // Title
            Text(fruit.title)
              .font(.largeTitle)
              .fontWeight(.heavy)
              .foregroundColor(fruit.gradientColors[1])
            
            // Headline
            Text(fruit.headline)
              .font(.headline)
              .multilineTextAlignment(.leading)
            
            // Nutrients
            FruitNutrientsView(fruit: fruit)
            
            // Subheadline
            Text("Leaern more about \(fruit.title)".uppercased())
              .fontWeight(.bold)
              .foregroundColor(fruit.gradientColors[1])
            
            // Description
            Text(fruit.description)
              .multilineTextAlignment(.leading)
            
            // Link
            SourceLinkView()
              .padding(.top, 10)
              .padding(.bottom, 40)
          }
          .padding(.horizontal, 20)
          .frame(maxWidth: 640, alignment: .center)
        }
        .navigationBarTitle(fruit.title, displayMode: .inline)
        .navigationBarHidden(true)
      }
      .edgesIgnoringSafeArea(.top)
    }
    .navigationViewStyle(StackNavigationViewStyle())
  }
}

#Preview {
  FruitDetailView(fruit: fruitsData[0])
}
