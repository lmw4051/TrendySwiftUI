//
//  HomeView.swift
//  TrendySwiftUI
//
//  Created by David on 2021/12/27.
//

import SwiftUI

struct HomeView: View {
  @State var hasScrolled = false
  
  var body: some View {
    ZStack {
      Color("Background").ignoresSafeArea()
      
      ScrollView {
        scrollDetection
        
        featured
        
        Color.clear.frame(height: 1000)
      }
      .coordinateSpace(name: "scroll")
      .onPreferenceChange(ScrollPreferenceKey.self, perform: { value in
        withAnimation(.easeInOut) {
          if value < 0 {
            hasScrolled = true
          } else {
            hasScrolled = false
          }
        }
      })
      .safeAreaInset(edge: .top, content: {
        Color.clear.frame(height: 70)
      })
      .overlay(
        NavigationBar(title: "Featured", hasScrolled: $hasScrolled)
    )
    }
  }
  
  var scrollDetection: some View {
    GeometryReader { proxy in
      Color.clear.preference(key: ScrollPreferenceKey.self, value: proxy.frame(in: .named("scroll")).minY)
    }
    .frame(height: 0)
  }
  
  var featured: some View {
    TabView {
      ForEach(courses) { item in
        FeaturedItem(course: item)
      }
    }
    .tabViewStyle(.page(indexDisplayMode: .never))
    .frame(height: 430)
    .background(
      Image("Blob 1")
        .offset(x: 250, y: -100))
  }
}

struct HomeView_Previews: PreviewProvider {
  static var previews: some View {
    HomeView()
  }
}
