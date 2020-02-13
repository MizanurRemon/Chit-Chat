//
//  signUp.swift
//  Chit Chat
//
//  Created by Mizanur Remon on 13/2/20.
//  Copyright © 2020 Mizanur Remon. All rights reserved.
//

import UIKit
import Firebase
class signUp: UIViewController {
    @IBOutlet weak var registerRound: UIButton!
    @IBOutlet weak var inputEmail: UITextField!
    @IBOutlet weak var inputPassword: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        registerRound.layer.cornerRadius = 6
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func registerAction(_ sender: Any) {
        
        if inputEmail.text != "" && inputPassword.text != ""{
            
            Auth.auth().createUser(withEmail: inputEmail.text!, password: inputPassword.text!) {
                (user, error) in
                
                if error != nil{
                    let alert = UIAlertController(title: "Error", message: "Fix error for registration", preferredStyle: .alert)
                    
                    alert.addAction(UIAlertAction(title: "Ok", style: .cancel, handler: nil))
                    
                    self.present(alert, animated:  true, completion:  nil)
                }
                else{
                   
                    let alert = UIAlertController(title: "Message", message: "Registration Successful", preferredStyle: .alert)
                                   
                    alert.addAction(UIAlertAction(title: "Ok", style: .cancel, handler: nil))
                    
                    self.present(alert, animated: true, completion: nil)
                    
                    
                }
            }
                   
                   
                   
        }
        else{
            
                    if inputEmail.text == "" && inputPassword.text != ""{
                       
                       let emailalert = UIAlertController(title: "Error", message: "Empty Email", preferredStyle: .alert)
                       
                       emailalert.addAction(UIAlertAction(title: "Ok", style: .cancel, handler: nil))
                       
                       present(emailalert,animated: true, completion: nil)
                   }
                   
                   else if inputEmail.text != "" && inputPassword.text == ""{
                       
                       let passalert = UIAlertController(title: "Error", message: "Password Empty", preferredStyle: .alert)
                       
                       passalert.addAction(UIAlertAction(title: "Ok", style: .cancel, handler: nil))
                       
                       present(passalert,animated: true, completion: nil)
                       
                   }
                   
                   else if inputEmail.text == "" && inputPassword.text == ""{
                       
                       let multialert = UIAlertController(title: "Error", message: "Fill those field", preferredStyle: .alert)
                       
                       multialert.addAction(UIAlertAction(title: "Ok", style: .cancel, handler: nil))
                       
                       present(multialert,animated: true, completion: nil)
                       
                   }
        }
        
       
        
       
        
    }
}
