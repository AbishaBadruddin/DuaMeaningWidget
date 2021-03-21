//
//  FirstPartDuaMeaningWidget.swift
//  DuaMeaning WidgetExtension
//
//  Created by Shain Dholakiya on 3/21/21.
//

import SwiftUI
import WidgetKit

struct FirstPartDuaMeaningWidgetProvider: TimelineProvider {
    
    typealias Entry = FirstPartDuaMeaningEntry
    
    func placeholder(in context: Context) -> FirstPartDuaMeaningEntry {
        return FirstPartDuaMeaningEntry(date: Date(), duaDetails: DuaProvider.firstPart())
      }
    
    func getSnapshot(in context: Context, completion: @escaping (FirstPartDuaMeaningEntry) -> ()) {
        let entry = FirstPartDuaMeaningEntry(date: Date(), duaDetails: DuaProvider.firstPart())
        completion(entry)
      }
  
    func getTimeline(
        in context: Context,
        completion: @escaping (Timeline<FirstPartDuaMeaningEntry>) -> ()
      ) {
        var entries: [FirstPartDuaMeaningEntry] = []

        // Generate a timeline consisting of five entries an hour apart, starting from the current date.
        let currentDate = Date()
        for hourOffset in 0 ..< 5 {
          let entryDate = Calendar.current.date(byAdding: .hour, value: hourOffset, to: currentDate)!
          let entry = FirstPartDuaMeaningEntry(date: entryDate, duaDetails: DuaProvider.firstPart())
          entries.append(entry)
        }

        let timeline = Timeline(entries: entries, policy: .atEnd)
        completion(timeline)
      }
    }

struct FirstPartDuaMeaningEntry: TimelineEntry {
  public let date: Date
  public let duaDetails: DuaDetails
}

struct FirstPartDuaMeaningWidgetEntryView : View {
  var entry: FirstPartDuaMeaningWidgetProvider.Entry

  var body: some View {
    DuaMeaningWidgetView(duaDetails: entry.duaDetails)
  }
}

struct FirstPartDuaMeaningWidget: Widget {
  private let kind: String = "FirstPartDuaMeaningWidget"

  public var body: some WidgetConfiguration {
    StaticConfiguration(
      kind: kind,
      provider: FirstPartDuaMeaningWidgetProvider()
    ) { entry in
      FirstPartDuaMeaningWidgetEntryView(entry: entry)
    }
    .configurationDisplayName("First Part Dua Meaning Widget")
    .description("Display a widget with a dua meaning that is updated randomly from only the first part.")
    .supportedFamilies([.systemSmall, .systemMedium, .systemLarge])
  }
}
