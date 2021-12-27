//
//  Course.swift
//  TrendySwiftUI
//
//  Created by David on 2021/12/27.
//

import Foundation

struct Course: Identifiable {
  let id = UUID()
  var title: String
  var subTitle: String
  var text: String
  var image: String
  var logo: String
}

var courses = [
  Course(title: "Acoustic Guitar",
         subTitle: "String Instrument",
         text: "The guitar is a fretted musical instrument that typically has six strings.",
         image: "GuitarIllustration",
         logo: "GuitarLogo"),
  Course(title: "Drum Set",
         subTitle: "Percussion Instrument",
         text: "A drum set – also called a drum kit, trap set (an abbreviation of the word - contraption or simply drums",
         image: "DrumIllustration",
         logo: "DrumLogo"),
  Course(title: "Bass Guitar",
         subTitle: "String Instrument",
         text: "The bass guitar, electric bass or simply bass, is the lowest-pitched member of the guitar family.",
         image: "BassIllustration",
         logo: "BassLogo"),
  Course(title: "Acousitc Piano",
         subTitle: "String & Percussion Instrument",
         text: "The piano is an acoustic, keyboard and stringed musical instrument in which the strings are struck by wooden hammers that are coated with a softer material",
         image: "PianoIllustration",
         logo: "PianoLogo")
//  Course(index: 3,
//         title: "Flutter for designers",
//         subtitle: "20 sections - 3 hours",
//         text: "Flutter is a relatively new toolkit that makes it easy to build cross-platform apps that look gorgeous and is easy to use.",
//         image: "Illustration 1",
//         background: "Background 1",
//         logo: "Logo 1"),
//  Course(index: 4,
//         title: "React Hooks Advanced",
//         subtitle: "20 sections - 3 hours",
//         text: "Learn how to build a website with Typescript, Hooks, Contentful and Gatsby Cloud",
//         image: "Illustration 2",
//         background: "Background 2",
//         logo: "Logo 3"),
]
