//
//  DuaMeaningWidgetBundle.swift
//  DuaMeaning WidgetExtension
//
//  Created by Shain Dholakiya on 3/20/21.
//

import SwiftUI
import WidgetKit

@main
struct DuaMeaningWidgetBundle: WidgetBundle {

  @WidgetBundleBuilder
  var body: some Widget {
    FirstPartDuaMeaningWidget()
    SecondPartDuaMeaningWidget()
    ThirdPartDuaMeaningWidget()
    FourthPartDuaMeaningWidget()
    ExtendedBundle().body
  }
}

struct ExtendedBundle: WidgetBundle {
 @WidgetBundleBuilder
 var body: some Widget {
    FifthPartDuaMeaningWidget()
    SixthPartDuaMeaningWidget()
    RandomDuaMeaningWidget()
 }
}
