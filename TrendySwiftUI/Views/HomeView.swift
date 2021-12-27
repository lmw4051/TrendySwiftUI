//
//  HomeView.swift
//  TrendySwiftUI
//
//  Created by David on 2021/12/27.
//

import SwiftUI

struct HomeView: View {
  var body: some View {
    ScrollView {
      FeaturedItem()
    }
    .overlay(
      NavigationBar(title: "Featured")
    )
  }
}

struct HomeView_Previews: PreviewProvider {
  static var previews: some View {
    HomeView()
  }
}
