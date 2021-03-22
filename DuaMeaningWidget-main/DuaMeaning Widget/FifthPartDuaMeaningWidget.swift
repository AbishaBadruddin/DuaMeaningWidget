//
//  FifthPartDuaMeaningWidget.swift
//  DuaMeaning WidgetExtension
//
//  Created by Shain Dholakiya on 3/21/21.
//

import SwiftUI
import WidgetKit

struct FifthPartDuaMeaningWidgetProvider: TimelineProvider {
    
    typealias Entry = FifthPartDuaMeaningEntry
    
    func placeholder(in context: Context) -> FifthPartDuaMeaningEntry {
        return FifthPartDuaMeaningEntry(date: Date(), duaDetails: DuaProvider.fifthPart())
      }
    
    func getSnapshot(in context: Context, completion: @escaping (FifthPartDuaMeaningEntry) -> ()) {
        let entry = FifthPartDuaMeaningEntry(date: Date(), duaDetails: DuaProvider.fifthPart())
        completion(entry)
      }
  
    func getTimeline(
        in context: Context,
        completion: @escaping (Timeline<FifthPartDuaMeaningEntry>) -> ()
      ) {
        var entries: [FifthPartDuaMeaningEntry] = []

        // Generate a timeline consisting of five entries an hour apart, starting from the current date.
        let currentDate = Date()
        for hourOffset in 0 ..< 1 {
          let entryDate = Calendar.current.date(byAdding: .day, value: hourOffset, to: currentDate)!
          let entry = FifthPartDuaMeaningEntry(date: entryDate, duaDetails: DuaProvider.fifthPart())
          entries.append(entry)
        }

        let timeline = Timeline(entries: entries, policy: .atEnd)
        completion(timeline)
      }
    }

struct FifthPartDuaMeaningEntry: TimelineEntry {
  public let date: Date
  public let duaDetails: DuaDetails
}

struct FifthPartDuaMeaningWidgetEntryView : View {
  var entry: FifthPartDuaMeaningWidgetProvider.Entry

  var body: some View {
    DuaMeaningWidgetView(duaDetails: entry.duaDetails)
  }
}

struct FifthPartDuaMeaningWidget: Widget {
  private let kind: String = "FifthPartDuaMeaningWidget"

  public var body: some WidgetConfiguration {
    StaticConfiguration(
      kind: kind,
      provider: FifthPartDuaMeaningWidgetProvider()
    ) { entry in
        FifthPartDuaMeaningWidgetEntryView(entry: entry)
    }
    .configurationDisplayName("Fifth Part Dua Meaning Widget")
    .description("Display a widget with a dua meaning that is updated randomly from only the fifth part.")
    .supportedFamilies([.systemSmall, .systemMedium, .systemLarge])
  }
}
