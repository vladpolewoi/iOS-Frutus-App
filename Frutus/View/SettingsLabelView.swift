//
//  SettingsLabelView.swift
//  Frutus
//
//  Created by Quest76 on 29.11.2023.
//

import SwiftUI

struct SettingsLabelView: View {
  var labelText: String
  var labelImage: String
  
  var body: some View {
    HStack {
      Text(labelText.uppercased())
      Spacer()
      Image(systemName: labelImage)
    }
  }
}

#Preview {
  SettingsLabelView(labelText: "Fructus", labelImage: "info.circle")
}
