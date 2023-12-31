//
//  ConjugationPageViewController.swift
//  ConjugActionApp
//
//  Created by Bruno Lopes on 2023-11-22.
//

import UIKit

class ConjugationPageViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    
    
    var sectionToExpand: Int?
    var verb : String?
    var tableVerb: [Verb] = []
    
    var verbChecked: FrenchVerbIndicatif?
    
    
    
    @IBOutlet weak var tableView: UITableView!
    
    @IBOutlet weak var lblVerb: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lblVerb.text = verb?.capitalized
        
        
        tableView.register(UINib(nibName: SecondTableViewCell.identifier, bundle: nil), forCellReuseIdentifier: SecondTableViewCell.identifier)
        
        tableView.delegate = self
        tableView.dataSource = self
        tableView.backgroundColor = .init(red:254/255, green: 246/255, blue: 234/255, alpha:1)
        
        let tableHeaderView = UIView(frame: CGRect(x: 0, y: 0, width: tableView.bounds.width, height: 50))
        tableHeaderView.backgroundColor = .init(red: 126/256, green: 178/255, blue: 232/255, alpha: 1)
           
           // Create a UILabel for the header text
           let headerLabel = UILabel(frame: CGRect(x: 16, y: 0, width: tableHeaderView.bounds.width - 32, height: tableHeaderView.bounds.height))
           headerLabel.text = "Indicatif"
           headerLabel.font = UIFont.boldSystemFont(ofSize: 18)
           headerLabel.textColor = .black
           headerLabel.textAlignment = .center
           
           // Add the label to the table header view
           tableHeaderView.addSubview(headerLabel)
           
           // Set the tableHeaderView property of the table view
           tableView.tableHeaderView = tableHeaderView
        
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 1
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3 //will continue the same????
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: SecondTableViewCell.identifier, for: indexPath) as! SecondTableViewCell
        print(VerbProvider.toString(inputVerb: tableVerb)[0])
        
        cell.backgroundColor = .init(red: 249/255, green: 231/255, blue: 210/255, alpha: 1)
        
        //this will change when we use the API
        if indexPath.section == 0{
            cell.lblTableViewCell?.text = VerbProvider.toString(inputVerb: tableVerb)[0]
            
        }else if indexPath.section == 1{
            cell.lblTableViewCell?.text = VerbProvider.toString(inputVerb: tableVerb)[1]
        }else{
            cell.lblTableViewCell?.text = VerbProvider.toString(inputVerb: tableVerb)[2]
        }
        
        
        return cell
        
    }
    
    @objc func showCells(_ sender: UIButton){
        
        if self.sectionToExpand == sender.tag{
            self.sectionToExpand = nil
        }else{
            self.sectionToExpand = sender.tag
        }
        
        tableView.reloadData()
        
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        
        let button = UIButton(type: .system)
        
        // update that for the other verb tenses
        if section == 0{
            button.setTitle("Present", for: .normal)
        }else if section == 1{
            button.setTitle("Imparfait", for: .normal)
        }else {
            button.setTitle("Passé Composé", for: .normal)
        }
        
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
        button.addTarget(self, action: #selector(showCells), for: .touchUpInside)
        button.tag = section
        
        return button
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        if let sectionToExpand = self.sectionToExpand{
            if sectionToExpand == indexPath.section{
                return 170
            }
        }
        return 0
        
    }
    
    //change that for the other verb tenses
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Indicatif"
    }
    
    

}
