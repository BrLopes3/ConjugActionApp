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
        btnConjuguerUIButton.layer.cornerRadius = 25
        
        
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func btnConjuguerTouchUpInside(_ sender: Any) {
    }
    
   
   
    
    @IBOutlet weak var btnConjuguerUIButton: UIButton!
    
    
}
