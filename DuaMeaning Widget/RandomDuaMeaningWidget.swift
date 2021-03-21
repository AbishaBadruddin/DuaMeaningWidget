//
//  RandomDuaMeaningWidget.swift
//  DuaMeaning WidgetExtension
//
//  Created by Shain Dholakiya on 3/20/21.
//

import SwiftUI
import WidgetKit

struct RandomDuaMeaningWidgetProvider: TimelineProvider {
    
    typealias Entry = RandomDuaMeaningEntry
    
    func placeholder(in context: Context) -> RandomDuaMeaningEntry {
        return RandomDuaMeaningEntry(date: Date(), duaDetails: DuaProvider.random())
      }
    
    func getSnapshot(in context: Context, completion: @escaping (RandomDuaMeaningEntry) -> ()) {
        let entry = RandomDuaMeaningEntry(date: Date(), duaDetails: DuaProvider.random())
        completion(entry)
      }
  
    func getTimeline(
        in context: Context,
        completion: @escaping (Timeline<RandomDuaMeaningEntry>) -> ()
      ) {
        var entries: [RandomDuaMeaningEntry] = []

        // Generate a timeline consisting of five entries an hour apart, starting from the current date.
        let currentDate = Date()
        for hourOffset in 0 ..< 5 {
          let entryDate = Calendar.current.date(byAdding: .hour, value: hourOffset, to: currentDate)!
          let entry = RandomDuaMeaningEntry(date: entryDate, duaDetails: DuaProvider.random())
          entries.append(entry)
        }

        let timeline = Timeline(entries: entries, policy: .atEnd)
        completion(timeline)
      }
    }

struct RandomDuaMeaningEntry: TimelineEntry {
  public let date: Date
  public let duaDetails: DuaDetails
}

struct RandomDuaMeaningWidgetEntryView : View {
  var entry: RandomDuaMeaningWidgetProvider.Entry

  var body: some View {
    DuaMeaningWidgetView(duaDetails: entry.duaDetails)
  }
}

struct RandomDuaMeaningWidget: Widget {
  private let kind: String = "RandomDuaMeaningWidget"

  public var body: some WidgetConfiguration {
    StaticConfiguration(
      kind: kind,
      provider: RandomDuaMeaningWidgetProvider()
    ) { entry in
      RandomDuaMeaningWidgetEntryView(entry: entry)
    }
    .configurationDisplayName("Random Dua Meaning Widget")
    .description("Display a widget with a dua meaning that is updated randomly.")
    .supportedFamilies([.systemSmall, .systemMedium, .systemLarge])
  }
}

struct DuaMeaning_Widget_Previews: PreviewProvider {
  static var previews: some View {
    RandomDuaMeaningWidgetEntryView(
      entry: RandomDuaMeaningEntry(
        date: Date(),
        duaDetails: DuaProvider.random()
      )
    )
    .previewContext(WidgetPreviewContext(family: .systemSmall))
  }
}

