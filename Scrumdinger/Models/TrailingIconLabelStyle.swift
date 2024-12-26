import SwiftUI

struct TTrailingIconLabelStyle: LabelStyle {
    func makeBody(configuration: Configuration) -> some View {
        HStack {
            configuration.title
            configuration.icon
        }
    }
}

extension LabelStyle where Self == TTrailingIconLabelStyle {
    static var trailingIcon: Self { Self() }
}
