import Foundation


struct DailyScrum: Identifiable, Codable {
    let id: UUID
    var title: String
    var attendees: [Attendee]
    var lengthInMinutes: Int
    var lengthInMinutesAsDouble: Double {
        get {
            Double(lengthInMinutes)
        }
        set {
            lengthInMinutes = Int(newValue)
        }
    }
    var theme: Theme
    var history: [History] = []
    
    init(id: UUID = UUID(), title: String, attendees: [String], lengthInMinutes: Int, theme: Theme) {
        self.id = id
        self.title = title
        self.attendees = attendees.map { Attendee(name: $0) }
        self.lengthInMinutes = lengthInMinutes
        self.theme = theme
    }
}


extension DailyScrum {
    struct Attendee: Identifiable, Codable {
        let id: UUID
        var name: String
        
        init(id: UUID = UUID(), name: String) {
            self.id = id
            self.name = name
        }
    }
    
    static var emptyScrum: DailyScrum {
        DailyScrum(title: "", attendees: [], lengthInMinutes: 5, theme: .sky)
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
