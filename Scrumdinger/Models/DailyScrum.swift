import Foundation

struct DailyScrum: Identifiable {
    let id: UUID
    var title: String
    var attendees: [String]
    var lengthInMinutes: Int
    var theme: Theme
    
    init(id: UUID = UUID(), title: String, attendees: [String], lengthInMinutes: Int, theme: Theme) {
        self.id = id
        self.title = title
        self.attendees = attendees
        self.lengthInMinutes = lengthInMinutes
        self.theme = theme
    }
}

extension DailyScrum {
    static let sampleData: [DailyScrum] =
    [
        DailyScrum(title: "Product Design",
                   attendees: ["Sakaue", "Nogawa", "Kyou", "Kaku"],
                   lengthInMinutes: 20,
                   theme: .poppy),
        DailyScrum(title: "Native Dev",
                   attendees: ["Abel", "Narita", "Nicolas"],
                   lengthInMinutes: 15,
                   theme: .yellow),
        DailyScrum(title: "Backend Dev",
                   attendees: ["Musha", "Brocken", "Kita", "Nagashima"],
                   lengthInMinutes: 20,
                   theme: .teal),
        DailyScrum(title: "Story Owner",
                   attendees: ["Asahara", "Tanigaki"],
                   lengthInMinutes: 10,
                   theme: .orange)
    ]
}
