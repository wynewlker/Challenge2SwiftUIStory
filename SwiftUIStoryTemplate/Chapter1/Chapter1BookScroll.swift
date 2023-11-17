//
//  Chapter12ndview.swift
//  SwiftUIStoryTemplate
//
//  Created by LaWayne Walker on 11/14/23.
//

import SwiftUI
import AVKit

struct Chapter1BookScroll: View {
    @State private var audioPlayer: AVAudioPlayer?

    var body: some View {
        NavigationView {
            ZStack {
                Image("Book scroll")
                    .resizable()
                    .ignoresSafeArea()
                    .onAppear {
                        if let soundPath = Bundle.main.path(forResource: "scaryfarmmusic", ofType: "mp3") {
                            let soundURL = URL(fileURLWithPath: soundPath)
                            do {
                                self.audioPlayer = try AVAudioPlayer(contentsOf: soundURL)
                                self.audioPlayer?.numberOfLoops = -1 // -1 means the audio will loop indefinitely
                                self.audioPlayer?.play()
                            } catch {
                                print("Error initializing audio player: \(error)")
                            }
                        }
                    }
                    .onDisappear {
                        self.audioPlayer?.stop()
                    }

                VStack(alignment: .leading) {
                    NavigationLink(destination: ContentView()) {
                        Label("", systemImage: "house")
                            .font(.largeTitle)
                            .foregroundColor(.black)
                    }

                    ScrollView {
                        Text("""
                            As the sun sets Tyshawn and Apollo finish up their daily farm work on their families corn field.
                            Apollo Tyshawn who were two brothers that inherited their families local farm as their parents died on Halloween night after working so much tending to the animals they had on the farm. Ever since they were little the two boys were used to herding the animals on the farm to then put them in their respetive pens on the daily nonstop.
                            They have to tend to:
                            Chickens
                            Cows
                            Pigs
                            After finishing their daily farm work. They both then went to their rooms fell down on their beds exhausted from the amount of farmwork the two had to do and went soundly to sleep
                            Tyshawn and Apollo both then awoke from their deep slumber as they heard a loud screech. They then ran outside as fast as they could as to see which of the animals was disturbed. Both meeting at the same one of their cows was screaming in agony

                            That didnt take to long
                            The cow looked otherwordly with a huge bite mark on its side
                            Utterly shocked they tried to tend to its wounds but the cow was loosing too much blood both ran to the house to try and tend to the cows wound
                            Tyshawn Apollo came back outside with medical supplies to find the cow standing up on their own. Once the cow got up it then started biting one by one all the other chickens pigs and cows
                            After only 5 minutes of time passing the entire farm was over run with mutauted animals
                            Tyshawn and Apollo in a frenzy boarded up the hoouse for protection to not be bitten
                            Tyshawn and Apollo in a panic of securing their house forgot to secure one area and that was the basement!
                            As they ran downstairs they then peared their heads around the basement doors suddenly the power in the house went out
                            The undead farm animals surrounded the entire house
                            With no power Tyshawn and Apollo grabbed weapons to protect themselves incase the undead farm animals came in through their barricades around the house
                            A knock at the door was heard and burst through the door was an undead chicken that Pounched on Tyshawn it bit him all over

                            Tyshawn was now turned
                            The undead Tyshawn tries to bite Apollo but he is able to push him off and the undead farm animals
                            Apollo was able to make his way to the basement to where the culprit of the undead farm animals started
                            There he finds the animal a mutauted half cow half chicken half pig!
                                All the farm animals swarm as Apollo charges
                             
                             
                            In the end as Apollo found the reason the first cow got bit and started this entire problem his life flashed before his eyes and Apollo then was bitten
                            Now both comoelty turned and undead
                            Suddenly the sun started to rise and one by one as the light hit the aplications they shriveled to dust

                            Now stop their farm land sits the carcuses of all the dead chicken,cows,and chickens as well as Tyshawn and Apollo
                            When the sun the rose it was now 8
                            """)
                            .font(Font.custom("helvetica", size: 30))
                            .foregroundStyle(.black)
                    }
                    .padding(30)
                    Spacer()
                }
            }
//            .navigationBarBackButtonHidden(true)
        }
        .navigationBarBackButtonHidden(true)
    }
}

#if DEBUG
struct Chapter1BookScroll_Previews: PreviewProvider {
    static var previews: some View {
        Chapter1BookScroll()
    }
}
#endif
