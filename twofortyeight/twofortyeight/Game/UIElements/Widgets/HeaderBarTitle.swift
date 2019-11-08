import SwiftUI

struct HeaderBarTitle: View {
    let title: String
    
    var body: some View {
        Group {
            Text(title)
                .font(.system(size: 60, weight: .black, design: .rounded))
                .foregroundColor(.white)
                .padding(.horizontal, 16)
                .accessibility(identifier: title)
        }
        .frame(maxWidth: .infinity, maxHeight: 100, alignment: .center)
            .background(Color(red: 224/255, green: 196/255, blue: 95/255, opacity: 1.0))
    }
}

struct HeaderBarTitle_Previews: PreviewProvider {
    static var previews: some View {
        HeaderBarTitle(title: "MENU")
    }
}
