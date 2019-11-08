import SwiftUI

struct GameOverView: View {
    let score: Int
    let moves: Int
    let action: () -> ()
    
    var body: some View {
        VStack(alignment: .center, spacing: 20) {
            HeaderBarTitle(title: "GAME OVER")
            Text("YOU SCORED:")
                .font(.system(size: 20, weight: .black, design: .rounded))
            .foregroundColor(Color(UIColor.systemYellow))
            
            Text("🎉 \(score.description) 🎉")
                .font(.system(size: 50, weight: .black, design: .rounded))
                .foregroundColor(Color(UIColor.label))
            
            Text("Number of moves: \(moves)")
                .font(.system(size: 14, weight: .medium, design: .rounded))
                .foregroundColor(Color(UIColor.systemGray))
            
            Group {
                ActionButton(title: "NEW GAME", action: action)
            }.padding()
            Spacer()
        }
        .background(Color(UIColor.systemBackground))
    }
}

extension GameOverView {
    private var scoreLabel: Text {
        Text("SCORE: \(score.description)")
            .font(.system(size: 30, weight: .black, design: .rounded))
            .foregroundColor(.red)
    }
}

struct GameOverView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            GameOverView(score: 12312, moves: 999) { }
                .environment(\.colorScheme, .light)
            
            GameOverView(score: 12312, moves: 999) { }
                .environment(\.colorScheme, .dark)
        }
    }
}
