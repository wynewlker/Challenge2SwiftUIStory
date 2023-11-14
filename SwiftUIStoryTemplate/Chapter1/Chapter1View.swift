import SwiftUI

struct Chapter1View: View {
    var body: some View {
        NavigationStack{
            VStack {
                ZStack {
                Image("Bookcover")
                        .resizable()
                        .ignoresSafeArea()
                    NavigationLink(destination:
                                    {
                        Chapter12ndview()
                    }, label: {
                    Text("The Unbecoming made by LaWayne Walker")
                            .bold()
                            .foregroundColor(.orange)
                            .font(Font.custom("bodoni 72",size: 35))
                            .padding(.bottom,100)
                                  
                    }
                )}
            }
            
        }
    }
}

#Preview {
    Chapter1View()
}
