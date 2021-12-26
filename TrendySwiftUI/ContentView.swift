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
      Text("Guitar")
        .font(.largeTitle)
        .fontWeight(.bold)
      Text("String Instrument")
        .font(.footnote)
        .fontWeight(.semibold)
      Text("The guitar is a fretted musical instrument that typically has six strings.")
        .font(.footnote)
        .multilineTextAlignment(.leading)
        .lineLimit(2)
    }
    .padding(.all, 20.0)
    .frame(height: 350.0)
    .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.blue/*@END_MENU_TOKEN@*/)
    .cornerRadius(30.0)
    .shadow(radius: 20)
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
