//
//  BookReccomendationsWidget.swift
//  BookReccomendationsWidget
//
//  Created by Chase Allen on 5/8/24.
//

import WidgetKit
import SwiftUI

struct Provider: TimelineProvider {
    func placeholder(in context: Context) -> RecommendationEntry {
        RecommendationEntry(date: .init(), name: "Dracula", image: .init("dracula"), displaySize: context.displaySize)
    }

    func getSnapshot(in context: Context, completion: @escaping (RecommendationEntry) -> ()) {
        let entry = RecommendationEntry(date: .init(), name: "Dracula", image: .init("dracula"), displaySize: context.displaySize)
        completion(entry)
    }

    func getTimeline(in context: Context, completion: @escaping (Timeline<Entry>) -> ()) {
        // Generate a timeline consisting of five entries an hour apart, starting from the current date.
        let currentDate = Date()
        let entry = RecommendationEntry(date: currentDate, name: "Dracula", image: .init("dracula"), displaySize: context.displaySize)

        let timeline = Timeline(entries: [entry], policy: .never)
        completion(timeline)
    }
}

struct RecommendationEntry: TimelineEntry {
    let date: Date
    let name: String
    let image: Image
    let displaySize: CGSize
}

struct BookReccomendationsWidgetEntryView : View {
    var entry: Provider.Entry

    var body: some View {
        ZStack {
            entry.image
                .resizable()
                .frame(width: entry.displaySize.width, height: entry.displaySize.height)
            VStack {
                Spacer()
                VStack(spacing: 10) {
                    Spacer()
                    Text(entry.name)
                        .foregroundStyle(.white)
                        .background(.black.opacity(0.6))
                        .padding(.bottom, 10)
                }
            }
        }
    }
}

struct BookReccomendationsWidget: Widget {
    let kind: String = "BookReccomendationsWidget"

    var body: some WidgetConfiguration {
        StaticConfiguration(kind: kind, provider: Provider()) { entry in
            if #available(iOS 17.0, *) {
                BookReccomendationsWidgetEntryView(entry: entry)
                    .containerBackground(.fill.tertiary, for: .widget)
            } else {
                BookReccomendationsWidgetEntryView(entry: entry)
                    .padding()
                    .background()
            }
        }
        .configurationDisplayName("My Widget")
        .description("This is an example widget.")
        .supportedFamilies([.systemSmall])
    }
}

#Preview(as: .systemSmall) {
    BookReccomendationsWidget()
} timeline: {
    RecommendationEntry(date: Date(), name: "Dracula", image: .init("dracula"), displaySize: .init(width: 159, height: 159))
}
