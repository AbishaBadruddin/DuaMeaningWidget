//
//  SixthPartDuaMeaningWidget.swift
//  DuaMeaning WidgetExtension
//
//  Created by Shain Dholakiya on 3/21/21.
//

import SwiftUI
import WidgetKit

struct SixthPartDuaMeaningWidgetProvider: TimelineProvider {
    
    typealias Entry = SixthPartDuaMeaningEntry
    
    func placeholder(in context: Context) -> SixthPartDuaMeaningEntry {
        return SixthPartDuaMeaningEntry(date: Date(), duaDetails: DuaProvider.sixthPart())
      }
    
    func getSnapshot(in context: Context, completion: @escaping (SixthPartDuaMeaningEntry) -> ()) {
        let entry = SixthPartDuaMeaningEntry(date: Date(), duaDetails: DuaProvider.sixthPart())
        completion(entry)
      }
  
    func getTimeline(
        in context: Context,
        completion: @escaping (Timeline<SixthPartDuaMeaningEntry>) -> ()
      ) {
        var entries: [SixthPartDuaMeaningEntry] = []

        // Generate a timeline consisting of five entries an hour apart, starting from the current date.
        let currentDate = Date()
        for hourOffset in 0 ..< 1 {
          let entryDate = Calendar.current.date(byAdding: .day, value: hourOffset, to: currentDate)!
          let entry = SixthPartDuaMeaningEntry(date: entryDate, duaDetails: DuaProvider.sixthPart())
          entries.append(entry)
        }

        let timeline = Timeline(entries: entries, policy: .atEnd)
        completion(timeline)
      }
    }

struct SixthPartDuaMeaningEntry: TimelineEntry {
  public let date: Date
  public let duaDetails: DuaDetails
}

struct SixthPartDuaMeaningWidgetEntryView : View {
  var entry: SixthPartDuaMeaningWidgetProvider.Entry

  var body: some View {
    DuaMeaningWidgetView(duaDetails: entry.duaDetails)
  }
}

struct SixthPartDuaMeaningWidget: Widget {
  private let kind: String = "SixthPartDuaMeaningWidget"

  public var body: some WidgetConfiguration {
    StaticConfiguration(
      kind: kind,
      provider: SixthPartDuaMeaningWidgetProvider()
    ) { entry in
        SixthPartDuaMeaningWidgetEntryView(entry: entry)
    }
    .configurationDisplayName("Sixth Part Dua Meaning Widget")
    .description("Display a widget with a dua meaning that is updated randomly from only the sixth part.")
    .supportedFamilies([.systemSmall, .systemMedium, .systemLarge])
  }
}
