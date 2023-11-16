
import SwiftUI
import AVKit

struct Chapter3ThirdView: View {
    @State var audioPlayer: AVAudioPlayer!
    var body: some View {
        NavigationView{
            ZStack {
                Image("o2")
                    .resizable()
                    .ignoresSafeArea()
                VStack { 
                    HStack{
                        NavigationLink(destination: Chapter3SecondView(audioPlayer: $audioPlayer)
                            .onAppear {
                                let sound = Bundle.main.path(forResource: "horror", ofType: "mp3")
                                self.audioPlayer = try! AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound!))
                                self.audioPlayer.play()
                            }
                        ){
                            Label("", systemImage: "house")
                                .font(.largeTitle)
                                .foregroundColor(.white)
                        }
                        Spacer()
                    }
                    .navigationBarBackButtonHidden(true)
                    ScrollView {
                        Text("""
                PET CEMETERY
    
            Doctor was asked to manage this position at the Univetsity hospital, and He, his wife and two children moved from the metropolis to a Detroit.
    LOUIS CREED  - is a middle-aged man, a loving husband and father, the head physician at the university hospital, and does not believe in the supernatural.
            On the day of his arrival, to Detroit Dr. Louis Creed met Old man Jude Crandall, who lived Next door, behind a busy road.
    JUDE CRANDALL - is Louis' 83-year-old neighbor; a cheerful and active old man; has wisdom and extensive life experience; supports Luis in difficult moments of life.
            The old man said that many animals die on the road, which children have been burying for decades in a cemetery in the forest behind Luis’s house. A few weeks later, Jude took his new neighbors to this cemetery, where the graves were arranged in a spiral. Behind the cemetery, according to Jude, there were lands that once belonged to the Mi'kmaq Indian tribe.
            On Thanksgiving Day in November, He, his wife and two children went to visit their parents, and Louis stayed at home. In the evening, his doughter's belong cat was hit by a truc. Knowing how dear this cat was to the girl, Jude took Louis along the path leading from The pet cametery to the vast plateau where the Mi'kmaq once buried their dead. The Indians left the place, believing that it had been “corrupted” by The evil Wendigo spirit.
    THE WENDIGO - is an evil spirit of the Mi'kmaq Indians that lives in an abandoned Indian cemetery.
            Jude told Louis to bury the cat here. Later, the old man said that the pet cemetery is the threshold of the Mi’kmaq cemetery, there is also a certain power there, but there is much more of it on the plateau. As a child, Jude buried his dog on a plateau, he came to life and lived for many more years.
            Those who wanted to return their pets knew about this plateau. When Louis asked if people were buried there, Jude became afraid and answered in the negative. It seemed to the doctor that the old man was lying and that something seemed to be controlling him.The next morning the cat returned home. His movements became sluggish; while hunting, he showed excessive cruelty; he smelled like an unearthed grave.
    In the spring, his son, who had recently learned to walk, ran out onto the road where he was hit by a truck.
    """)
                        .font(Font.custom("DancingScript-Bold", size: 30))
                        .foregroundStyle(.white)
                    }
                    Spacer()
                }
                .navigationBarBackButtonHidden(true)
            }
        }
        .navigationBarBackButtonHidden(true)
    }
}


#Preview {
    Chapter3ThirdView()
}
