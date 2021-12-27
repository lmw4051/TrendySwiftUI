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
      } else {
        ScrollView {
          VStack {
            Spacer()
          }
          .frame(maxWidth: .infinity)
          .frame(height: 500)
          .foregroundStyle(.black)
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
          .overlay(
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
              
              Divider()
              HStack {
                Image("Avatar Default")
                  .resizable()
                  .frame(width: 26, height: 26)
                  .cornerRadius(10)
                  .padding(8)
                  .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 18, style: .continuous))
                  .strokeStyle(cornerRadius: 18)
                Text("Taught by David Lee")
                  .font(.footnote)
              }
            }
              .padding(20)
              .background(
                Rectangle()
                  .fill(.ultraThinMaterial)
                  .mask(RoundedRectangle(cornerRadius: 30, style: .continuous))
                  .matchedGeometryEffect(id: "blur", in: namespace)
              )
              .offset(y: 250)
              .padding(20)
          )
        }
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
