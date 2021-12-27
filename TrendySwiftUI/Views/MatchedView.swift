//
//  MatchedView.swift
//  TrendySwiftUI
//
//  Created by David on 2021/12/27.
//

import SwiftUI

struct MatchedView: View {
  @Namespace var namespace
  @State var show = false
  
  var body: some View {
    ZStack {
      if !show {
        VStack(alignment: .leading, spacing: 12) {
          Text("Guitar")
            .font(.largeTitle.weight(.bold))
            .matchedGeometryEffect(id: "title", in: namespace)
            .frame(maxWidth: .infinity, alignment: .leading)
          Text("String Instrument".uppercased())
            .font(.footnote.weight(.semibold))
            .matchedGeometryEffect(id: "subTitle", in: namespace)
          Text("The guitar is a fretted musical instrument that typically has six strings.")
            .font(.footnote)
            .matchedGeometryEffect(id: "text", in: namespace)
        }
        .padding(20)
        .foregroundStyle(.white)
        .background(
          Color.red.matchedGeometryEffect(id: "background", in: namespace)
        )
        .padding(20)
      } else {
        VStack {
          Spacer()
          Text("The guitar is a fretted musical instrument that typically has six strings.")
            .font(.footnote)
            .matchedGeometryEffect(id: "text", in: namespace)
          Text("String Instrument".uppercased())
            .font(.footnote.weight(.semibold))
            .matchedGeometryEffect(id: "subTitle", in: namespace)
          Text("Guitar")
            .font(.largeTitle.weight(.bold))
            .matchedGeometryEffect(id: "title", in: namespace)
            .frame(maxWidth: .infinity, alignment: .leading)
        }
        .padding(20)
        .foregroundStyle(.black)
        .background(
          Color.blue.matchedGeometryEffect(id: "background", in: namespace)
        )
      }
    }
    .onTapGesture {
      withAnimation(.spring(response: 0.6, dampingFraction: 0.8)) {
        show.toggle()
      }
    }
  }
}

struct MatchedView_Previews: PreviewProvider {
  static var previews: some View {
    MatchedView()
  }
}
