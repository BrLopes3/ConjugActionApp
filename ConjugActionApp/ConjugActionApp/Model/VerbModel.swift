//
//  VerbModel.swift
//  ConjugActionApp
//
//  Created by Bruno Lopes on 2023-11-26.
//

import Foundation

class Verb{
    
    var header: String?
    var je: String?
    var tu: String?
    var il: String?
    var nous: String?
    var vous: String?
    var ils: String?
    
    init(header: String, je: String, tu: String, il: String, nous: String, vous: String, ils: String) {
        
        self.header = header
        self.je = je
        self.tu = tu
        self.il = il
        self.nous = nous
        self.vous = vous
        self.ils = ils
    }
    
}
    
