//
//  CourseItem.swift
//  TrendySwiftUI
//
//  Created by David on 2021/12/28.
//

import SwiftUI

struct CourseItem: View {
  var namespace: Namespace.ID
  @Binding var show: Bool
  
  var body: some View {
    VStack {
      Spacer()
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
      .background(
        Rectangle()
          .fill(.ultraThinMaterial)
          .mask(RoundedRectangle(cornerRadius: 30, style: .continuous))
          .blur(radius: 30)
          .matchedGeometryEffect(id: "blur", in: namespace)
      )
    }
    .padding(20)
    .foregroundStyle(.white)
    .background(
      Image("GuitarIllustration")
        .resizable()
        .aspectRatio(contentMode: .fit)
        .matchedGeometryEffect(id: "image", in: namespace)
    )
    .background(
      Image("Background 5")
        .resizable()
        .aspectRatio(contentMode: .fill)
        .matchedGeometryEffect(id: "background", in: namespace)
    )
    .mask(
      RoundedRectangle(cornerRadius: 30, style: .continuous)
        .matchedGeometryEffect(id: "mask", in: namespace)
    )
    .frame(height: 300)
    .padding(20)
  }
}


struct CourseItem_Previews: PreviewProvider {
  @Namespace static var namespace
  
  static var previews: some View {
    CourseItem(namespace: namespace, show: .constant(true))
  }
}
