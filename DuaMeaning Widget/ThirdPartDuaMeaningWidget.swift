//
//  ThirdPartDuaMeaningWidget.swift
//  DuaMeaning WidgetExtension
//
//  Created by Shain Dholakiya on 3/21/21.
//

import SwiftUI
import WidgetKit

struct ThirdPartDuaMeaningWidgetProvider: TimelineProvider {
    
    typealias Entry = ThirdPartDuaMeaningEntry
    
    func placeholder(in context: Context) -> ThirdPartDuaMeaningEntry {
        return ThirdPartDuaMeaningEntry(date: Date(), duaDetails: DuaProvider.thirdPart())
      }
    
    func getSnapshot(in context: Context, completion: @escaping (ThirdPartDuaMeaningEntry) -> ()) {
        let entry = ThirdPartDuaMeaningEntry(date: Date(), duaDetails: DuaProvider.thirdPart())
        completion(entry)
      }
  
    func getTimeline(
        in context: Context,
        completion: @escaping (Timeline<ThirdPartDuaMeaningEntry>) -> ()
      ) {
        var entries: [ThirdPartDuaMeaningEntry] = []

        // Generate a timeline consisting of five entries an hour apart, starting from the current date.
        let currentDate = Date()
        for hourOffset in 0 ..< 1 {
          let entryDate = Calendar.current.date(byAdding: .minute, value: hourOffset, to: currentDate)!
          let entry = ThirdPartDuaMeaningEntry(date: entryDate, duaDetails: DuaProvider.thirdPart())
          entries.append(entry)
        }

        let timeline = Timeline(entries: entries, policy: .atEnd)
        completion(timeline)
      }
    }

struct ThirdPartDuaMeaningEntry: TimelineEntry {
  public let date: Date
  public let duaDetails: DuaDetails
}

struct ThirdPartDuaMeaningWidgetEntryView : View {
  var entry: ThirdPartDuaMeaningWidgetProvider.Entry

  var body: some View {
    DuaMeaningWidgetView(duaDetails: entry.duaDetails)
  }
}

struct ThirdPartDuaMeaningWidget: Widget {
  private let kind: String = "ThirdPartDuaMeaningWidget"

  public var body: some WidgetConfiguration {
    StaticConfiguration(
      kind: kind,
      provider: ThirdPartDuaMeaningWidgetProvider()
    ) { entry in
        ThirdPartDuaMeaningWidgetEntryView(entry: entry)
    }
    .configurationDisplayName("Third Part Dua Meaning Widget")
    .description("Display a widget with a dua meaning that is updated randomly from only the third part.")
    .supportedFamilies([.systemSmall, .systemMedium, .systemLarge])
  }
}
