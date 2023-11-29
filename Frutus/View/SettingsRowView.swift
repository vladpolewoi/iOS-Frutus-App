//
//  SettingsRowView.swift
//  Frutus
//
//  Created by Quest76 on 29.11.2023.
//

import SwiftUI

struct SettingsRowView: View {
  var name: String
  var content: String? = nil
  var linkLabel: String? = nil
  var linkDestination: String? = nil
  
  var body: some View {
    VStack {
      Divider().padding(.vertical, 4)
      
      HStack {
        Text(name).foregroundColor(.gray)
        Spacer()
        
        if content != nil {
          Text(content!)
        } else if linkLabel  != nil && linkDestination != nil {
          Link(linkLabel!, destination: URL(string: "https://\(linkDestination!)")!)
          Image(systemName: "arrow.up.right.square").foregroundColor(.pink)
        } else {
          EmptyView()
        }
      }
    }
  }
}

#Preview {
  Group {
    SettingsRowView(name: "Developer", content: "HOASDN")
    SettingsRowView(name: "Developer", linkLabel: "LINK", linkDestination: "HOASDN")
  }
}
