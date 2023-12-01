//
//  verbProvider.swift
//  ConjugActionApp
//
//  Created by Bruno Lopes on 2023-11-26.
//

import Foundation

class VerbProvider{
    
    static var verbs: [String] = []
    
    static var aller = [
        Verb(header: "Présent", je: "je vais", tu: "tu vas", il: "il/elle/on va", nous: "nous allons", vous: "vous allez", ils: "ils/elles vont"), 
                        Verb(header: "Imparfait", je: "j'allais", tu: "tu allais", il: "il/elle/on allait", nous: "nous allons", vous: "vous alliez", ils: "ils/elles allaient"),
                        Verb(header: "Passé Composé",je: "je suis allé", tu: "tu es allé", il: "il/elle/on est allé", nous: "nous sommes allés", vous: "vous êtes allés", ils: "ils/elles sont allés")]
    
    static var parler = [
        Verb(header: "Présent", je: "je parle", tu: "tu parles", il: "il/elle/on parle", nous: "nous parlons", vous: "vous parlez", ils: "ils/elles parlent"),
                        Verb(header: "Imparfait", je: "je parlais", tu: "tu parlais", il: "il/elle/on parlait", nous: "nous parlions", vous: "vous parliez", ils: "ils/elles parliaient"),
                        Verb(header: "Passé Composé",je: "j'ai parlé", tu: "tu a parlé", il: "il/elle/on a parlé", nous: "nous avons parlé", vous: "vous avez parlé", ils: "ils/elles ont parlé")]
    
    static func toString(inputVerb: [Verb]) -> [String]{
        var conjugation = ""
        var count = 0
        verbs = []
        for verbTense in inputVerb{
            conjugation = ""
            conjugation += "\(verbTense.je ?? "not applied")\n"
            conjugation += "\(verbTense.tu ?? "not applied")\n"
            conjugation += "\(verbTense.il ?? "not applied")\n"
            conjugation += "\(verbTense.nous ?? "not applied")\n"
            conjugation += "\(verbTense.vous ?? "not applied")\n"
            conjugation += "\(verbTense.ils ?? "not applied")"
            count = count+1
            verbs.append(conjugation)
        }
        print(count)
        print(verbs)
        return verbs
        
    }
    
    
}
