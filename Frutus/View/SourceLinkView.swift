//
//  SourceLinkView.swift
//  Frutus
//
//  Created by Quest76 on 29.11.2023.
//

import SwiftUI

struct SourceLinkView: View {
    var body: some View {
      GroupBox() {
        HStack {
          Text("Content source")
          Spacer()
          Link("Wikipedia", destination: URL(string: "https://wikipedia.com")!)
          Image(systemName: "arrow.up.right.square")
        }
        .font(.footnote)
      }
    }
}

#Preview {
    SourceLinkView()
}
