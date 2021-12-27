//
//  Tab.swift
//  TrendySwiftUI
//
//  Created by David on 2021/12/27.
//

import SwiftUI

struct TabItem: Identifiable {
  var id = UUID()
  var text: String
  var icon: String
  var tab: Tab
}

var tabItems = [
  TabItem(text: "Home", icon: "house", tab: .home),
  TabItem(text: "Explore", icon: "magnifyingglass", tab: .explore),
  TabItem(text: "Notifications", icon: "bell", tab: .Notifications),
  TabItem(text: "Library", icon: "rectangle.stack", tab: .library)
]

enum Tab: String {
  case home
  case explore
  case Notifications
  case library
}
