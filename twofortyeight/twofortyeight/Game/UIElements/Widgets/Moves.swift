import SwiftUI

struct Moves: View {
    let moves: Int

    var body: some View {
        HStack {
            Text("Moves: \(moves)").bold()
        }
        .font(.system(size: 16, weight: .regular, design: .rounded))
        .foregroundColor(Color(UIColor.systemGray))
    }
}
struct Moves_Previews: PreviewProvider {
    static var previews: some View {
        Moves(moves: 123)
    }
}
