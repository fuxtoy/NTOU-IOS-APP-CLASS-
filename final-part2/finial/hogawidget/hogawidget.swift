//
//  hogawidget.swift
//  hogawidget
//
//  Created by timchen on 2022/1/15.
//

import WidgetKit
import SwiftUI

struct Provider: TimelineProvider {
    func placeholder(in context: Context) -> SimpleEntry {
        SimpleEntry(date: Date())
    }

    func getSnapshot(in context: Context, completion: @escaping (SimpleEntry) -> ()) {
        let entry = SimpleEntry(date: Date())
        completion(entry)
    }

    func getTimeline(in context: Context, completion: @escaping (Timeline<Entry>) -> ()) {
        var entries: [SimpleEntry] = []

        // Generate a timeline consisting of five entries an hour apart, starting from the current date.
        let currentDate = Date()
        for hourOffset in 0 ..< 5 {
            let entryDate = Calendar.current.date(byAdding: .hour, value: hourOffset, to: currentDate)!
            let entry = SimpleEntry(date: entryDate)
            entries.append(entry)
        }

        let timeline = Timeline(entries: entries, policy: .atEnd)
        completion(timeline)
    }
}

struct SimpleEntry: TimelineEntry {
    let date: Date
}

struct hogawidgetEntryView : View {
    var entry: Provider.Entry

    var body: some View {
        ZStack{
            
            Image("Unknown")
                .resizable()
                .ignoresSafeArea()
            Text(entry.date, style: .time)
        }

        
    }
}

@main
struct hogawidget: Widget {
    let kind: String = "hogawidget"

    var body: some WidgetConfiguration {
        StaticConfiguration(kind: kind, provider: Provider()) { entry in
            hogawidgetEntryView(entry: entry)
        }
        .configurationDisplayName("HoGa")
        .description("widget for final")
    }
}

struct hogawidget_Previews: PreviewProvider {
    static var previews: some View {
        hogawidgetEntryView(entry: SimpleEntry(date: Date()))
            .previewContext(WidgetPreviewContext(family: .systemSmall))
    }
}
