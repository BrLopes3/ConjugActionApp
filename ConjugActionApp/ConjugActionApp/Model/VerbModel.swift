//
//  VerbModel.swift
//  ConjugActionApp
//
//  Created by Bruno Lopes on 2023-11-26.
//

import Foundation

class Verb{
    
    var je: String?
    var tu: String?
    var il: String?
    var nous: String?
    var vous: String?
    var ils: String?
    
    init(je: String, tu: String, il: String, nous: String, vous: String, ils: String) {
        self.je = je
        self.tu = tu
        self.il = il
        self.nous = nous
        self.vous = vous
        self.ils = ils
    }
    
}
    
