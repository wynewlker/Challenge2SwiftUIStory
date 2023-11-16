import SwiftUI

struct Chapter1View: View {
    var body: some View {
        NavigationView {
            VStack {
                ZStack {
                Image("Bookcover")
                    
                        .resizable()
                        .ignoresSafeArea()
                    NavigationLink(destination:
                                    {
                        Chapter1BookScroll()
                    }, label: {
                    Text("The Slaughterhouse made by LaWayne Walker")
                        
                            .bold()
                            .foregroundColor(.white)
                            .font(Font.custom("bodoni 72",size: 50))
                            .padding(.bottom,50)

                    }
                )}
                
            }
            
        }
        .navigationBarBackButtonHidden(true)
    }
}
#Preview {
    Chapter1View()
}
