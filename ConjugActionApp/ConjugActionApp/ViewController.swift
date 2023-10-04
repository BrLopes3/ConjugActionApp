//
//  ViewController.swift
//  ConjugActionApp
//
//  Created by Bruno Lopes on 2023-10-04.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var txtInputVerb: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        btnVerbConjugationUIButton.layer.cornerRadius = 25
        
        
        
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func btnVerbConjugationTouchUpInside(_ sender: Any) {
        
        
        
    }
    
    
    @IBOutlet weak var btnVerbConjugationUIButton: UIButton!
    

}

