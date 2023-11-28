//
//  StartButtonView.swift
//  Frutus
//
//  Created by Quest76 on 28.11.2023.
//

import SwiftUI

struct StartButtonView: View {
    var body: some View {
      Button {
        
      } label: {
        HStack(spacing: 8) {
          Text("Start")
          
          Image(systemName: "arrow.right.circle")
            .imageScale(.large)
        }
      }
      .tint(.white)
      .buttonBorderShape(.capsule)
      .buttonStyle(.bordered)
      
    }
}

#Preview {
    StartButtonView()
    .previewLayout(.sizeThatFits)
}
