import SwiftUI

struct Chapter3View: View {
    var body: some View {
        NavigationStack {
            VStack {
                ZStack {
                    Image("o")
                        .resizable()
                        .ignoresSafeArea()
                    NavigationLink(destination:
                     {
                      Chapter3SecondView()
                  }, label: {
                      Text("Pet Semetery") 
                          .bold()
                          .foregroundColor(.white)
.font(Font.custom("DancingScript-Bold", size: 40))
      
        .padding(.bottom,115)
   
                  })
                        }
                    }
            }
            .navigationBarBackButtonHidden(true)
        }
        }
    


#Preview {
    Chapter3View()
}
