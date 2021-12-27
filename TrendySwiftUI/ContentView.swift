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
        .cornerRadius(10)
        .padding(9)
        .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 16, style: .continuous))
        .strokeStyle(cornerRadius: 16)
      Text("Acoustic Guitar")
        .font(.largeTitle)
        .fontWeight(.bold)
        .foregroundStyle(.linearGradient(colors: [.primary, .primary.opacity(0.5)], startPoint: .topLeading, endPoint: .bottomTrailing))
      Text("String Instrument".uppercased())
        .font(.footnote)
        .fontWeight(.semibold)
        .foregroundStyle(.secondary)
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
    .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 30, style: .continuous))
    .shadow(color: Color("Shadow").opacity(0.3), radius: 10, x: 0, y: 10)
    .strokeStyle()
    .padding(.horizontal, 20)
    .background(
      Image("Blob 1")
        .offset(x: 250, y: -100))
    .overlay(
      Image("GuitarIllustration")
        .resizable()
        .aspectRatio(contentMode: .fit)
        .frame(height: 230)
        .offset(x: 32, y: -80)
    )
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
    ContentView()
      .preferredColorScheme(.dark)
      .previewDevice("iPhone 13")
  }
}
