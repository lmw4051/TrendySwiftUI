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
}

var tabItems = [
  TabItem(text: "Home", icon: "house"),
  TabItem(text: "Explore", icon: "magnifyingglass"),
  TabItem(text: "Notifications", icon: "bell"),
  TabItem(text: "Library", icon: "rectangle.stack")
]
