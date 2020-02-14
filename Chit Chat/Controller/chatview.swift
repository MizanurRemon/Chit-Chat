//
//  chatview.swift
//  Chit Chat
//
//  Created by Mizanur Remon on 13/2/20.
//  Copyright © 2020 Mizanur Remon. All rights reserved.
//

import UIKit
import Firebase

class chatview: UIViewController, UITableViewDelegate, UITableViewDataSource, UITextFieldDelegate {
    
    
    
 
    @IBOutlet weak var heightConstraint: NSLayoutConstraint!
    @IBOutlet weak var sendOutlet: UIButton!

    @IBOutlet weak var messageTextField: UITextField!
    @IBOutlet weak var messageTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

       
        self.navigationItem.hidesBackButton = true
        
        sendOutlet.layer.cornerRadius = 6
        messageTextField.layer.cornerRadius = 6
        
        messageTable.delegate = self
        messageTable.dataSource = self
        messageTextField.delegate = self
        
        messageTable.register(UINib(nibName: "messageCell", bundle: nil), forCellReuseIdentifier: "TableViewCell")
        configureTableView()
        
    }

    // MARK: - Table view data source

    @IBAction func SignOutAction(_ sender: Any) {
       
            do{
                try Auth.auth().signOut()
                
                navigationController!.popToRootViewController(animated: true)
            }
            catch{
                let alert = UIAlertController(title: "Problem", message: "Error logging out", preferredStyle: .alert)
                
                alert.addAction(UIAlertAction(title: "Ok", style: .cancel, handler: nil))
                
                self.present(alert,animated: true, completion: nil)
        }
        
    }
    
    //cellforRow atindexPath
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath) as! TableViewCell
        
        let messageArray = ["remon","mesbah","porag"]
        
        cell.messageBody.text = messageArray[indexPath.row]
        
        return cell
  
    }
    
    // numberofrowinSection
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 3
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        
        UIView.animate(withDuration: 0.2){
            self.heightConstraint.constant = 308
            self.view.layoutIfNeeded()
        }
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        
    }
    
    func configureTableView(){
        messageTable.rowHeight = UITableView.automaticDimension
        messageTable.estimatedRowHeight = 220
    }
}
