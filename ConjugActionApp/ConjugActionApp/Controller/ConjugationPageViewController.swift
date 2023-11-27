//
//  ConjugationPageViewController.swift
//  ConjugActionApp
//
//  Created by Bruno Lopes on 2023-11-22.
//

import UIKit

class ConjugationPageViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    
    var verb : String?
    var tableVerb: [Verb] = VerbProvider.aller
    
    @IBOutlet weak var tableView: UITableView!
    
    @IBOutlet weak var lblVerb: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lblVerb.text = verb
        
        tableView.delegate = self
        tableView.dataSource = self
        
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return tableVerb.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "conjugationCell", for: indexPath)
        
        var verbContent = VerbProvider.toString()
        
        
        var content = cell.defaultContentConfiguration()
        
 
        content.text = verbContent
        cell.contentConfiguration = content
        
        
        return cell
        
    }


}
