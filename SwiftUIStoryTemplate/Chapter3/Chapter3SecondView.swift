
import SwiftUI
struct Chapter3SecondView: View {
    var body: some View {
        VStack {
            ZStack {
                Image("o1")
                    .resizable()
                    .ignoresSafeArea()
                HStack(alignment: .center, spacing: 100) {
                    Text("""
  PET CEMETERY
         By Olga
""")
                    .font(Font.custom("DancingScript-Bold", size: 20))
                    .padding(.bottom,270)
                    .bold()
                    .foregroundColor(.white)
                    Divider()
                    Spacer()
                }
                NavigationLink(destination:
                                {
                    Chapter3ThirdView()
                }) {
                    HStack() {
                        Text("Read Now")
                            .font(Font.custom("DancingScript-Bold", size: 20))
                            .foregroundColor(.white)
                            .foregroundColor(Color.white)
                            .padding()
                            .background(Color.black)
                            .cornerRadius(20)
                            .padding(.bottom,95)
                    }
                    .navigationBarBackButtonHidden(true)
                }
            }
        }
    }
}
    #Preview {
        Chapter3SecondView()
    }

