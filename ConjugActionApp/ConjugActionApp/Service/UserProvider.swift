//
//  UserProvider.swift
//  ConjugActionApp
//
//  Created by Bruno Lopes on 2023-11-13.
//

import Foundation

class UserProvider{
    
    static var allUsers = [User(username: "admin", password: "1234"),
                           User(username: "bonnie", password: "1234"),
                           User(username: "bruno", password: "1234"),
                           User(username: "kathleen", password: "1234"),
                           User(username: "daniel carvalho", password: "1234")]
    
    
    static func verifyCredentials(userInput: String, passwordInput: String) -> Bool{
        
        for user in allUsers{
            
            if user.username!.contains(userInput) && user.password!.contains(passwordInput){
                return true
            }
        }
        return false
    }
    
    
    
}
