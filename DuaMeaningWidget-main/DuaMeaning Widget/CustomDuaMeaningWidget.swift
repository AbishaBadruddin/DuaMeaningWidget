////
////  CustomDuaMeaningWidget.swift
////  DuaMeaning WidgetExtension
////
////  Created by Shain Dholakiya on 3/20/21.
////
//
//import SwiftUI
//import WidgetKit
//
//struct CustomDuaMeaningWidgetProvider: IntentTimelineProvider {
//    
//    typealias Entry = CustomDuaMeaningEntry
//    typealias Intent = SelectDuaMeaningIntent
//    
//    func placeholder(in context: Context) -> CustomDuaMeaningEntry {
//        CustomDuaMeaningEntry(date: Date(), duaDetails: DuaProvider.random())
//      }
//    
//  func getSnapshot(for configuration: SelectDuaMeaningIntent, in context: Context, completion: @escaping (CustomDuaMeaningEntry) -> ()
//  ) {
//    // Use a random emoji in the widget gallery.
//    if context.isPreview {
//      completion(CustomDuaMeaningEntry(date: Date(), duaDetails: DuaProvider.random()))
//      return
//    }
//
//    let duaDetails = lookupDuaMeaningDetails(for: configuration)
//    let entry = CustomDuaMeaningEntry(date: Date(), duaDetails: duaDetails)
//    completion(entry)
//  }
//  
//  public func getTimeline(
//    for configuration: SelectDuaMeaningIntent,
//    in context: Context,
//    completion: @escaping (Timeline<CustomDuaMeaningEntry>) -> ()
//  ) {
//    var entries = [CustomDuaMeaningEntry]()
//    let duaDetails = lookupDuaMeaningDetails(for: configuration)
//    let entry = CustomDuaMeaningEntry(date: Date(), duaDetails: duaDetails)
//    entries.append(entry)
//    let timeline = Timeline(entries: entries, policy: .never)
//    completion(timeline)
//  }
//
//  private func lookupDuaMeaningDetails(for configuration: SelectDuaMeaningIntent) -> DuaDetails {
//    guard let duaId = configuration.part?.identifier,
//       let duaForConfig = DuaProvider.all().first(where: { dua in
//        dua.id == duaId
//       })
//    else {
//      return DuaProvider.random()
//    }
//    return duaForConfig
//  }
//}
//
//struct CustomDuaMeaningEntry: TimelineEntry {
//  public let date: Date
//  public let duaDetails: DuaDetails
//}
//
//struct CustomDuaMeaningWidgetEntryView : View {
//  var entry: CustomDuaMeaningWidgetProvider.Entry
//
//  var body: some View {
//    DuaMeaningWidgetView(duaDetails: entry.duaDetails)
//  }
//}
//
//struct CustomDuaMeaningWidget: Widget {
//  private let kind: String = "CustomDuaMeaningWidget"
//
//  public var body: some WidgetConfiguration {
//    IntentConfiguration(
//      kind: kind,
//      intent: SelectDuaMeaningIntent.self,
//      provider: CustomDuaMeaningWidgetProvider()
//    ) { entry in
//      CustomDuaMeaningWidgetEntryView(entry: entry)
//    }
//    .configurationDisplayName("Custom Dua Meaning Widget")
//    .description("Display a widget with a dua meaning of your choice.")
//    .supportedFamilies([.systemSmall, .systemMedium, .systemLarge])
//  }
//}
