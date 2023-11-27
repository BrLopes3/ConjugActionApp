//
//  verbProvider.swift
//  ConjugActionApp
//
//  Created by Bruno Lopes on 2023-11-26.
//

import Foundation

class VerbProvider{
    
    static var aller = [Verb(je: "je vais", tu: "tu vas", il: "il/elle/on va", nous: "nous allons", vous: "vous allez", ils: "ils/elles vont"), Verb(je: "j'allais", tu: "tu allais", il: "il/elle/on allait", nous: "nous allons", vous: "vous alliez", ils: "ils/elles allaient"), Verb(je: "je suis allé", tu: "tu es allé", il: "il/elle/on est allé", nous: "nous sommes allés", vous: "vous êtes allés", ils: "ils/elles sont allés")]
    
    static func toString() -> String{
        var conjugation = ""
        
        for verbTense in aller{
            
            conjugation += "\(verbTense.je ?? "not applied")\n"
            conjugation += "\(verbTense.tu ?? "not applied")\n"
            conjugation += "\(verbTense.il ?? "not applied")\n"
            conjugation += "\(verbTense.nous ?? "not applied")\n"
            conjugation += "\(verbTense.vous ?? "not applied")\n"
            conjugation += "\(verbTense.ils ?? "not applied")\n\n"

        }
        return conjugation
        
    }
    
    
}
