//
//  ViewController.swift
//  ConjugActionApp
//
//  Created by Bruno Lopes on 2023-10-04.
//

import UIKit

class ViewController: UIViewController {
    
    var username: String?
    var verbToPrint: FrenchVerbIndicatif?
    
    @IBOutlet weak var lblGreetings: UILabel!
    
    @IBOutlet weak var txtInputVerb: UITextField!
    
    @IBOutlet weak var btnConjuguerUIButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initialize()
    }
    
    private func initialize(){
        
        btnConjuguerUIButton.layer.cornerRadius = 25
        btnConjuguerUIButton.layer.shadowColor = UIColor.gray.cgColor
        btnConjuguerUIButton.layer.shadowOpacity = 0.8
        btnConjuguerUIButton.layer.shadowOffset = .init(width: 5, height: 5)
        lblGreetings.text = "Bonjour " + username!
    }
    
    
    @IBAction func btnConjuguerTouchUpInside(_ sender: Any) {
        
        FrenchVerbAPI.getVerb(verb: txtInputVerb.text!) { verb in
            
            self.verbToPrint = verb.indicatif!
            
            print(verb.indicatif)
            
            DispatchQueue.main.async{
                self.performSegue(withIdentifier: Segue.toConjugationPage, sender: self)
            }
            
            
        } failHandler: { httpStatusCode, errorMessage in
            DispatchQueue.main.async{
                Toast.ok(view: self, title: "An error ocurred", message: errorMessage)
            }
            
        } 

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == Segue.toConjugationPage{
            (segue.destination as! ConjugationPageViewController).verbChecked = verbToPrint!
        }
        
    }
    
    
    
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if segue.identifier == Segue.toConjugationPage{
//            
//            (segue.destination as! ConjugationPageViewController).verb = txtInputVerb.text
//                
//                let verbToPrint = verb.indicatif!
//                
//                
//                (segue.destination as! ConjugationPageViewController).verbChecked = verbToPrint
                
//            } failHandler: { httpStatusCode, errorMessage in
//                print(errorMessage)
//            }

            
//            if txtInputVerb.text == "aller"{
//                (segue.destination as! ConjugationPageViewController).tableVerb = VerbProvider.aller
//            }else if txtInputVerb.text == "parler"{
//                (segue.destination as! ConjugationPageViewController).tableVerb = VerbProvider.parler
//            }else{
//                Toast.ok(view: self, title: "Verb not found", message: "Try another verb")
//            }
//        }
//    }
    
//    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
//        
//        if identifier == Segue.toConjugationPage{
//            
//            return true
//        }
//        return false
//    }
//    

    
    
    
}
