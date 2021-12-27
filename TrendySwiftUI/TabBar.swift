//
//  TabBar.swift
//  TrendySwiftUI
//
//  Created by David on 2021/12/27.
//

import SwiftUI

struct TabBar: View {
  var body: some View {
    ZStack(alignment: .bottom) {
      ContentView()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .offset(y: 300)
      HStack {
        Spacer()
        VStack(spacing: 0) {
          Image(systemName: "house")
            .symbolVariant(.fill)
            .font(.body.bold())
            .frame(width: 80, height: 29)
          Text("Home")
            .font(.caption2)
        }
        Spacer()
        VStack(spacing: 0) {
          Image(systemName: "magnifyingglass")
            .symbolVariant(.fill)
            .font(.body.bold())
            .frame(width: 80, height: 29)
          Text("Explore")
            .font(.caption2)
        }
        Spacer()
      }
      .padding(.top, 14)
      .frame(height: 88, alignment: .top)
      .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 34, style: .continuous))
      .strokeStyle()
      .frame(maxHeight: .infinity, alignment: .bottom)
      .ignoresSafeArea()
    }
  }
}

struct TabBar_Previews: PreviewProvider {
  static var previews: some View {
    TabBar()
  }
}
