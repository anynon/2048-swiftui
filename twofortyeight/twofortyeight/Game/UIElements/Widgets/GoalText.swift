import SwiftUI

struct GoalText: View {
    var body: some View {
        HStack (alignment: .center, spacing: 4) {
            Text("Join the numbers and get to the")
            Text("\("2048") tile!") .bold()
        }
        .font(.system(size: 16, weight: .regular, design: .rounded))
        .foregroundColor(Color(UIColor.systemGray))
    }
}

struct GoalText_Previews: PreviewProvider {
    static var previews: some View {
        GoalText()
    }
}
