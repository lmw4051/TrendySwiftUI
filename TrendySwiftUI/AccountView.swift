//
//  AccountView.swift
//  TrendySwiftUI
//
//  Created by David on 2021/12/27.
//

import SwiftUI

struct AccountView: View {
  var body: some View {
    NavigationView {
      List {
        VStack(spacing: 8) {
          Image(systemName: "person.crop.circle.fill.badge.checkmark")
            .symbolVariant(.circle.fill)
            .font(.system(size: 32))
            .symbolRenderingMode(.palette)
            .foregroundStyle(.blue, .blue.opacity(0.3))
            .padding()
            .background(Circle().fill(.ultraThinMaterial))
            .background(
              Image(systemName: "hexagon")
                .symbolVariant(.fill)
                .foregroundColor(.blue)
                .font(.system(size: 200))
                .offset(x: -50, y: -100)
            )
          Text("David Lee")
            .font(.title.weight(.semibold))
          HStack {
            Image(systemName: "location")
              .imageScale(.large)
            Text("Taiwan")
              .foregroundColor(.secondary)
          }
        }
        .frame(maxWidth: .infinity)
        
        Section {
          Text("Settings")
          Text("Billing")
          Text("Help")
        }
        .listRowSeparatorTint(.blue)
        .listRowSeparator(.hidden)
      }
      .listStyle(.insetGrouped)
      .navigationTitle("Account")
    }
  }
}

struct AccountView_Previews: PreviewProvider {
  static var previews: some View {
    AccountView()
  }
}
