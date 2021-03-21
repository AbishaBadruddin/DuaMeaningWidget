//
//  DuaMeaning_Widget.swift
//  DuaMeaning Widget
//
//  Created by Shain Dholakiya on 3/19/21.
//

import WidgetKit
import SwiftUI

struct Provider: TimelineProvider {
    func placeholder(in context: Context) -> SimpleEntry {
        SimpleEntry(date: Date(), duaDetails: DuaProvider.random())
    }

    func getSnapshot(in context: Context, completion: @escaping (SimpleEntry) -> ()) {
        let entry = SimpleEntry(date: Date(), duaDetails: DuaProvider.random())
        completion(entry)
    }

    func getTimeline(in context: Context, completion: @escaping (Timeline<Entry>) -> ()) {
        var entries: [SimpleEntry] = []

        // Generate a timeline consisting of five entries an hour apart, starting from the current date.
        let currentDate = Date()
        for hourOffset in 0 ..< 5 {
            let entryDate = Calendar.current.date(byAdding: .hour, value: hourOffset, to: currentDate)!
            let entry = SimpleEntry(date: entryDate, duaDetails: DuaProvider.random())
            entries.append(entry)
        }

        let timeline = Timeline(entries: entries, policy: .atEnd)
        completion(timeline)
    }
}

struct SimpleEntry: TimelineEntry {
  public let date: Date
  public let duaDetails: DuaDetails
}

struct DuaMeaning_WidgetEntryView: View {
  var entry: Provider.Entry

  var body: some View {
    DuaMeaningWidgetView(duaDetails: entry.duaDetails)
  }
}

@main
struct DuaMeaning_Widget: Widget {
  private let kind: String = "DuaMeaning_Widget"

  public var body: some WidgetConfiguration {
    StaticConfiguration(
      kind: kind,
      provider: Provider()
//      placeholder: PlaceholderView()
    ) { entry in
      DuaMeaning_WidgetEntryView(entry: entry)
    }
    .configurationDisplayName("Random Dua Meaning")
    .description("Display a widget with a dua meaning that is updated randomly.")
    .supportedFamilies([.systemSmall, .systemMedium, .systemLarge])
  }
}

struct DuaMeaning_Widget_Previews: PreviewProvider {
    static var previews: some View {
        DuaMeaning_WidgetEntryView(entry: SimpleEntry(date: Date(), duaDetails: DuaProvider.random()))
            .previewContext(WidgetPreviewContext(family: .systemSmall))
    }
}
