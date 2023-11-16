//
//  Page 1.swift
//  SwiftUIStoryTemplate
//
//  Created by Calil Hall on 11/14/23.
//

import SwiftUI

struct Page_1: View {
    @State private var response: yesOrNo?
    @State private var storySetting: String?
    
    var characters = [
        CharacterDescriptions(name: .Calil, adjective: Adjective.allCases.randomElement()!),
        CharacterDescriptions(name: .Marshall, adjective: Adjective.allCases.randomElement()!),
        CharacterDescriptions(name: .Slim, adjective: Adjective.allCases.randomElement()!)
        
    ]
    let characterCareers = ["detective", "Navy SEAL", "neuroscientist"]
    
    
    let knownFor = ["sharp instincts", "calm demeanor", "ability to solve the most complex puzzles"]
    
    
    var body: some View {
        
            VStack{
                
                
                
                Text("\(intro())")
                
                
                
                if let response {
                    Text(introChoice(yesOrNo:response))
                    
                }
                if let storySetting {
                    Text(storySetting)
                }
                
                
                
                Spacer()
                if (response == nil) && storySetting == nil {
                    HStack{
                        Spacer()
                        Button {
                            response = .Yes
                            storySetting = setting(characters: characters, career: characterCareers.randomElement() ?? "Veteran", adjective: .allCases.randomElement() ?? .seasoned, knownFor: knownFor.randomElement() ?? "Nothing")
                            
                        } label: {
                            Text("Yes?")
                                .tint(.white)
                                .padding(30)
                                .background(Color.green)
                                .cornerRadius(10)
                                .font(.largeTitle.bold())
                            
                            
                        }
                        Spacer()
                        Button {
                            response = .No
                            storySetting = setting(characters: characters, career: characterCareers.randomElement() ?? "Veteran", adjective: .allCases.randomElement() ?? .seasoned, knownFor: knownFor.randomElement() ?? "Nothing")
                            
                        } label: {
                            Text("No?")
                                .tint(.white)
                                .padding(30)
                                .background(Color.red)
                                .cornerRadius(10)
                                .font(.largeTitle.bold())
                            
                        }
                        Spacer()
                    }
                }
                Spacer()
            }
        }
    }
    
    #Preview {
        Page_1()
    }

