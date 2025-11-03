import SwiftUI

struct TLButton: View {
    let buttontext: String
    let background: Color
    let action: () -> Void

    var body: some View {
        Button(action: action) {
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(background)
                Text(buttontext)
                    .foregroundColor(.white)
                    .bold()
            }
            .padding()
        }
    }
}

#Preview {
    TLButton(buttontext: "Value", background: .pink) {
        print("Button tapped!") // 👈 test this in preview or simulator
    }
}
