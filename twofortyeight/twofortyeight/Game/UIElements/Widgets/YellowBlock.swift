import SwiftUI

struct YellowBlock: View {
    
    var body: some View {
        Text("2048")
            .font(.system(size: 34, weight: .black, design: .rounded))
            .frame(width: 120, height: 120)
            .background(Color(red: 224/255, green: 196/255, blue: 95/255, opacity: 1.0))
            .foregroundColor(.white)
            .cornerRadius(8)
    }
}

struct YellowBlock_Previews: PreviewProvider {
    static var previews: some View {
        YellowBlock()
    }
}
