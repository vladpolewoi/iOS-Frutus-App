//
//  ContentView.swift
//  Frutus
//
//  Created by Quest76 on 28.11.2023.
//

import SwiftUI

struct ContentView: View {
  var fruits: [Fruit] = fruitsData
  
  @State private var isShowingSettings: Bool = false
  
  var body: some View {
    NavigationView {
      List {
        ForEach(fruits) { item in
          NavigationLink(destination: FruitDetailView(fruit: item)) {
            FruitRowView(fruit: item)
              .padding(.vertical, 4)
          }
        }
      }
      .navigationTitle("Fruits")
      .navigationBarItems(
        trailing: Button {
          isShowingSettings = true
        } label: {
          Image(systemName: "slider.horizontal.3")
        }
          .sheet(isPresented: $isShowingSettings) {
            SettingsView()
          }
      )
    }
    .navigationViewStyle(StackNavigationViewStyle())
  }
}

#Preview {
  ContentView(fruits: fruitsData)
}
