import SwiftUI
import AVKit

struct Chapter3View: View {
    @Binding var audioPlayer: AVAudioPlayer!
    var body: some View {
        NavigationStack {
            VStack {
                ZStack {
                    Image("o")
                        .resizable()
                        .ignoresSafeArea()
                    VStack{
                        HStack{
                            NavigationLink(destination: 
                                            ContentView()
                                                .onAppear {
                                                    audioPlayer.stop()
                                                }
                            ){
                                Label("Do not leave me", systemImage: "")
                                    .font(Font.custom("DancingScript-Bold", size: 20))
                                    .foregroundColor(.white)
                                    .onDisappear {
                                    }
                            }
                        .navigationBarBackButtonHidden(true)
                            Spacer()
                        }
                        Spacer()
                    }
                    NavigationLink(destination:
                     {
                      Chapter3SecondView(audioPlayer: $audioPlayer)
                  }, label: {
                      Text("Pet Cemetery")
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
    Chapter3View(audioPlayer: .constant(AVAudioPlayer()))
}
