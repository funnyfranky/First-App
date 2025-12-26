//
//  ContentView.swift
//  First App
//
//  Created by Josh Chapman on 12/25/25.
//

import SwiftUI

struct ContentView: View {

    static func nextTuesdayAt1130(from date: Date = .now) -> Date {
        let calendar = Calendar.current

        var components = DateComponents()
        components.weekday = 3          // Tuesday (1 = Sunday)
        components.hour = 11
        components.minute = 30
        components.second = 0

        return calendar.nextDate(
            after: date,
            matching: components,
            matchingPolicy: .nextTime
        )!
    }

    let targetDate = ContentView.nextTuesdayAt1130()

    private var formatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateStyle = .short
        return formatter
    }

    private var todayString: String {
        formatter.string(from: Date())
    }

    var body: some View {
        VStack(spacing: 30) {
            Text(targetDate, style: .timer)
                .monospacedDigit()

            Text("Today is \(todayString)")
            Text(Date.now.formatted(date: .abbreviated, time: .shortened))
        }
    }
}


