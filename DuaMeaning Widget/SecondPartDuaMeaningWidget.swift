//
//  SecondPartDuaMeaningWidget.swift
//  DuaMeaning WidgetExtension
//
//  Created by Shain Dholakiya on 3/21/21.
//

import SwiftUI
import WidgetKit

struct SecondPartDuaMeaningWidgetProvider: TimelineProvider {
    
    typealias Entry = SecondPartDuaMeaningEntry
    
    func placeholder(in context: Context) -> SecondPartDuaMeaningEntry {
        return SecondPartDuaMeaningEntry(date: Date(), duaDetails: DuaProvider.secondPart())
      }
    
    func getSnapshot(in context: Context, completion: @escaping (SecondPartDuaMeaningEntry) -> ()) {
        let entry = SecondPartDuaMeaningEntry(date: Date(), duaDetails: DuaProvider.secondPart())
        completion(entry)
      }
  
    func getTimeline(
        in context: Context,
        completion: @escaping (Timeline<SecondPartDuaMeaningEntry>) -> ()
      ) {
        var entries: [SecondPartDuaMeaningEntry] = []

        // Generate a timeline consisting of five entries an hour apart, starting from the current date.
        let currentDate = Date()
        for hourOffset in 0 ..< 5 {
          let entryDate = Calendar.current.date(byAdding: .hour, value: hourOffset, to: currentDate)!
          let entry = SecondPartDuaMeaningEntry(date: entryDate, duaDetails: DuaProvider.secondPart())
          entries.append(entry)
        }

        let timeline = Timeline(entries: entries, policy: .atEnd)
        completion(timeline)
      }
    }

struct SecondPartDuaMeaningEntry: TimelineEntry {
  public let date: Date
  public let duaDetails: DuaDetails
}

struct SecondPartDuaMeaningWidgetEntryView : View {
  var entry: SecondPartDuaMeaningWidgetProvider.Entry

  var body: some View {
    DuaMeaningWidgetView(duaDetails: entry.duaDetails)
  }
}

struct SecondPartDuaMeaningWidget: Widget {
  private let kind: String = "SecondPartDuaMeaningWidget"

  public var body: some WidgetConfiguration {
    StaticConfiguration(
      kind: kind,
      provider: SecondPartDuaMeaningWidgetProvider()
    ) { entry in
        SecondPartDuaMeaningWidgetEntryView(entry: entry)
    }
    .configurationDisplayName("Second Part Dua Meaning Widget")
    .description("Display a widget with a dua meaning that is updated randomly from only the second part.")
    .supportedFamilies([.systemSmall, .systemMedium, .systemLarge])
  }
}
