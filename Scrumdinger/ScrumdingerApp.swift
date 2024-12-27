//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by 麻原彪史 on 2024/12/26.
//

import SwiftUI

@main
struct ScrumdingerApp: App {
    var body: some Scene {
        WindowGroup {
            ScrumsView(scrums: DailyScrum.sampleData)
        }
    }
}
