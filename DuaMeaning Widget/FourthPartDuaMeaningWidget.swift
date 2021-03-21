//
//  FourthPartDuaMeaningWidget.swift
//  DuaMeaning WidgetExtension
//
//  Created by Shain Dholakiya on 3/21/21.
//

import SwiftUI
import WidgetKit

struct FourthPartDuaMeaningWidgetProvider: TimelineProvider {
    
    typealias Entry = FourthPartDuaMeaningEntry
    
    func placeholder(in context: Context) -> FourthPartDuaMeaningEntry {
        return FourthPartDuaMeaningEntry(date: Date(), duaDetails: DuaProvider.fourthPart())
      }
    
    func getSnapshot(in context: Context, completion: @escaping (FourthPartDuaMeaningEntry) -> ()) {
        let entry = FourthPartDuaMeaningEntry(date: Date(), duaDetails: DuaProvider.fourthPart())
        completion(entry)
      }
  
    func getTimeline(
        in context: Context,
        completion: @escaping (Timeline<FourthPartDuaMeaningEntry>) -> ()
      ) {
        var entries: [FourthPartDuaMeaningEntry] = []

        // Generate a timeline consisting of five entries an hour apart, starting from the current date.
        let currentDate = Date()
        for hourOffset in 0 ..< 1 {
          let entryDate = Calendar.current.date(byAdding: .day, value: hourOffset, to: currentDate)!
          let entry = FourthPartDuaMeaningEntry(date: entryDate, duaDetails: DuaProvider.fourthPart())
          entries.append(entry)
        }

        let timeline = Timeline(entries: entries, policy: .atEnd)
        completion(timeline)
      }
    }

struct FourthPartDuaMeaningEntry: TimelineEntry {
  public let date: Date
  public let duaDetails: DuaDetails
}

struct FourthPartDuaMeaningWidgetEntryView : View {
  var entry: FourthPartDuaMeaningWidgetProvider.Entry

  var body: some View {
    DuaMeaningWidgetView(duaDetails: entry.duaDetails)
  }
}

struct FourthPartDuaMeaningWidget: Widget {
  private let kind: String = "FourthPartDuaMeaningWidget"

  public var body: some WidgetConfiguration {
    StaticConfiguration(
      kind: kind,
      provider: FourthPartDuaMeaningWidgetProvider()
    ) { entry in
        FourthPartDuaMeaningWidgetEntryView(entry: entry)
    }
    .configurationDisplayName("Fourth Part Dua Meaning Widget")
    .description("Display a widget with a dua meaning that is updated randomly from only the fourth part.")
    .supportedFamilies([.systemSmall, .systemMedium, .systemLarge])
  }
}
