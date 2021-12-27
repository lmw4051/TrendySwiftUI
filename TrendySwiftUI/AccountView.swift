//
//  AccountView.swift
//  TrendySwiftUI
//
//  Created by David on 2021/12/27.
//

import SwiftUI

struct AccountView: View {
  @State var isDeleted = false
  @State var isPinned = false
  
  var body: some View {
    NavigationView {
      List {
        profile
        menu
        links
      }
      .listStyle(.insetGrouped)
      .navigationTitle("Account")
    }
  }
  
  var profile: some View {
    VStack(spacing: 8) {
      Image(systemName: "person.crop.circle.fill.badge.checkmark")
        .symbolVariant(.circle.fill)
        .font(.system(size: 32))
        .symbolRenderingMode(.palette)
        .foregroundStyle(.blue, .blue.opacity(0.3))
        .padding()
        .background(Circle().fill(.ultraThinMaterial))
        .background(
          HexagonView()
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
    .padding()
  }
  
  var menu: some View {
    Section {
      NavigationLink { ContentView() } label: {
        Label("Settings", systemImage: "gear")
      }
      NavigationLink { Text("Billing") } label: {
        Label("Billing", systemImage: "creditcard")
      }
      NavigationLink { ContentView() } label: {
        Label("Help", systemImage: "questionmark")
      }
    }
    .accentColor(.primary)
    .listRowSeparatorTint(.blue)
    .listRowSeparator(.hidden)
  }
  
  var links: some View {
    Section {
      if !isDeleted {
        Link(destination: URL(string: "https://apple.com")!) {
          HStack {
            Label("Website", systemImage: "house")
            Spacer()
            Image(systemName: "link")
              .foregroundColor(.secondary)
          }
        }
        .swipeActions(edge: .leading, allowsFullSwipe: true) {
          Button(action: { isDeleted = true }) {
            Label("Delete", systemImage: "trash")
          }
          .tint(.red)
          pinButton
        }
      }
      
      Link(destination: URL(string: "https://youtube.com")!) {
        HStack {
          Label("YouTube", systemImage: "tv")
          Spacer()
          Image(systemName: "link")
            .foregroundColor(.secondary)
        }
      }
      .swipeActions {
        pinButton
      }
    }
    .accentColor(.primary)
    .listRowSeparator(.hidden)
  }
  
  var pinButton: some View {
    Button { isPinned.toggle() } label: {
      if isPinned {
        Label("Unpin", systemImage: "pin.slash")
      } else {
        Label("Pin", systemImage: "pin")
      }
    }
    .tint(isPinned ? .gray : .yellow)
  }
}

struct AccountView_Previews: PreviewProvider {
  static var previews: some View {
    AccountView()
  }
}
