import SwiftUI

struct Header: View {
    let score: Int
    let bestScore: Int
    let menuAction: () -> Void
    
    var body: some View {
        HStack(alignment: .top) {
            YellowBlock()
            HStack(alignment: .top) {
                VStack(alignment: .center, spacing: 10) {
                    ScoreBox(title: "SCORE", score:score)
                    SmallActionButton(title: "MENU", action: self.menuAction)
                        .accessibility(identifier: "menuButton")
                }
                ScoreBox(title: "BEST", score: bestScore)
            }
        }
    }
}
