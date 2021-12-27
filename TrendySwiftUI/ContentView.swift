//
//  ContentView.swift
//  TrendySwiftUI
//
//  Created by David on 2021/12/27.
//

import SwiftUI

struct ContentView: View {
  var body: some View {
    VStack(alignment: .leading, spacing: 8.0) {
      Spacer()
      Image("GuitarLogo")
        .resizable(resizingMode: .stretch)
        .aspectRatio(contentMode: .fit)
        .frame(width: 26.0, height: 26.0)
        .cornerRadius(20.0)
      Text("Acoustic Guitar")
        .font(.largeTitle)
        .fontWeight(.bold)
      Text("String Instrument".uppercased())
        .font(.footnote)
        .fontWeight(.semibold)
        .foregroundColor(.secondary)
      Text("The guitar is a fretted musical instrument that typically has six strings.")
        .font(.footnote)
        .multilineTextAlignment(.leading)
        .lineLimit(2)
        .frame(maxWidth: .infinity, alignment: .leading)
        .foregroundColor(.secondary)
    }
    .padding(.all, 20.0)
    .padding(.vertical, 20)
    .frame(height: 350.0)
    .background(.ultraThinMaterial)
    .cornerRadius(30.0)
    .shadow(color: Color("Shadow").opacity(0.3), radius: 10, x: 0, y: 10)
    .padding(.horizontal, 20)
    .background(
      Image("Blob 1")
        .offset(x: 250, y: -100))
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
