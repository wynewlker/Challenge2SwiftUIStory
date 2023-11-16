//
//  Page 1.swift
//  SwiftUIStoryTemplate
//
//  Created by Calil Hall on 11/14/23.
//

import SwiftUI

struct Page_1: View {
    @State private var response: yesOrNo?
    let character1 = CharacterDescriptions(name: .Calil, adjective: Adjective.allCases.randomElement()!)
    let character2 = CharacterDescriptions(name: .Marshall, adjective: Adjective.allCases.randomElement()!)
    let character3 = CharacterDescriptions(name: .Slim, adjective: Adjective.allCases.randomElement()!)
   
    
    let characterCareers = ["detective", "Navy SEAL", "neuroscientist"]
  
    
    let knownFor = ["sharp instincts", "calm demeanor", "ability to solve the most complex puzzles"]
   
    
    
    var body: some View {
        VStack{
            
            Text("\(intro())")
            
            
            if let response {
                Text(introChoice(yesOrNo:response))
                
            }
            Spacer()
            HStack{
                
                Button {
                    response = .Yes
                } label: {
                    Text("Yes?")
                        .tint(.white)
                        .padding()
                        .background(Color.green)
                        .cornerRadius(10)
                      
                        
                }
              
                Button {
                    response = .No
                } label: {
                    Text("No?")
                        .tint(.white)
                        .padding()
                        .background(Color.red)
                        .cornerRadius(10)
                 
                }
        
            }
            Spacer()
//            Text(setting(characters: [CharacterDescriptions(name: CharacterNames.Calil, adjective: .brilliant), CharacterDescriptions(name: CharacterNames.Fiendman, adjective: .retired)], career: "Diesel Technician", adjective: .seasoned, knownFor: "Rolling coal"))
        }
    }
}

#Preview {
    Page_1()
}
