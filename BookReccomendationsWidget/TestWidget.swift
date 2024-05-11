//
//  TestWidget.swift
//  BookRecommendations
//
//  Created by Chase Allen on 5/8/24.
//

import SwiftUI
import WidgetKit

struct TestProvider: TimelineProvider {
    func placeholder(in context: Context) -> TestEntry {
        TestEntry(date: .init())
    }

    func getSnapshot(in context: Context, completion: @escaping (TestEntry) -> ()) {
        let entry = TestEntry(date: .init())
        completion(entry)
    }

    func getTimeline(in context: Context, completion: @escaping (Timeline<Entry>) -> ()) {
        // Generate a timeline consisting of five entries an hour apart, starting from the current date.
        let entry = TestEntry(date: .init())

        let timeline = Timeline(entries: [entry], policy: .never)
        completion(timeline)
    }
}

struct TestEntry: TimelineEntry {
    let date: Date
}

struct TestEntryView : View {
    var entry: TestProvider.Entry

    var body: some View {
        Text("This is a test")
    }
}

struct TestWidget: Widget {
    let kind: String = "TestWidget"

    var body: some WidgetConfiguration {
        StaticConfiguration(kind: kind, provider: TestProvider()) { entry in
            if #available(iOS 17.0, *) {
                TestEntryView(entry: entry)
                    .containerBackground(.fill.tertiary, for: .widget)
            } else {
                TestEntryView(entry: entry)
                    .padding()
                    .background()
            }
        }
        .configurationDisplayName("Test 2")
        .description("Another test.")
        .supportedFamilies([.systemSmall, .systemMedium])
    }
}

#Preview(as: .systemSmall) {
    TestWidget()
} timeline: {
    TestEntry(date: .init())
}
