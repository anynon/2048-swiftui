import SwiftUI

struct SmallActionButton: View {
    let title: String
    let action: () -> ()
    var body: some View {
        Button(action: action) {
            Text(title)
                .font(.system(size: 18, weight: .black, design: .rounded))
                .padding(.horizontal, 22)
                .padding(.vertical, 12)
                .background(Color.orange)
                .foregroundColor(.white)
                .cornerRadius(4)
        }
    }
}

struct SmallActionButton_Previews: PreviewProvider {
    static var previews: some View {
        SmallActionButton(title: "MENU") { }
    }
}
