//
//  storyInfo.swift
//  SwiftUIStoryTemplate
//
//  Created by Calil Hall on 11/15/23.
//

import Foundation

enum Adjective: String, CaseIterable {
    case seasoned = "seasoned"
    case retired = "retired"
    case brilliant = "brilliant"
}

struct CharacterDescriptions {
    let name: CharacterNames
    var adjective: Adjective
}

enum CharacterNames: String {
    case Calil
    case Marshall
    case Slim
    case Fiendman
}
enum yesOrNo: String {
    case Yes
    case No
}


func intro() -> String {
    return """
\n You want to hear a story? \n Yes, YOU. \n Trust me, it will be a good one. \n Do you want to hear it or not?
"""
}
func introChoice(yesOrNo: yesOrNo) -> String {
    switch yesOrNo {
        
    case.Yes:
        return "Well then, let's get started."
    case.No:
       return "Well... I'm telling you anyway."
    }
}
func setting(characters: [CharacterDescriptions], career: String, adjective: Adjective, knownFor: String) -> String {
    return ("""
\n\tIn a small town nestled amidst rolling hills and dense forests, a sudden scream shattered the tranquil night. \(characters[0].name), a \(adjective.rawValue) \(career) known for his \(knownFor), rushed to the scene, his mind already racing with potential leads. The dim streetlights cast eerie shadows over the crime scene, intensifying the grim atmosphere. Examining the brutal environment, \(characters[0].name)'s stern look conveyed his determination to find answers. \n\nThe victim's lifeless body lay sprawled on the ground, surrounded by a maze of clues, each one leading to more questions. As he meticulously collected evidence, his mind wandered to \(characters[1].name), the \(adjective.rawValue) \(career) \(knownFor). \(characters[0].name) knew he would need \(characters[1].name)'s keen insights to crack this case. Meanwhile, \(characters[2].name), a \(career), paced back and forth, haunted by the images from the crime scene. His usual poise was overshadowed by the gravity of the situation. With every step, he felt the weight of the impending investigation, a puzzle that seemed to extend far beyond the confines of the small town.
""")
    
    //}
    
    
    
    
    
    
    
}
