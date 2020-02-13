//
//  signIn.swift
//  Chit Chat
//
//  Created by Mizanur Remon on 13/2/20.
//  Copyright © 2020 Mizanur Remon. All rights reserved.
//

import UIKit
import Firebase
class signIn: UIViewController {
    @IBOutlet weak var loginemail: UITextField!
    @IBOutlet weak var loginpass: UITextField!
    
    @IBOutlet weak var logInround: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        logInround.layer.cornerRadius = 6
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func logInpressed(_ sender: Any) {
        Auth.auth().signIn(withEmail: loginemail.text!, password: loginpass.text!) { (user, error) in
            
            if error != nil{
                let alert = UIAlertController(title: "Error", message: "Invalid email or password", preferredStyle: .alert)
                
                alert.addAction(UIAlertAction(title: "Ok", style: .cancel, handler: nil))
                
                self.present(alert, animated: true, completion: nil)
            }
            else{
                self.performSegue(withIdentifier: "toChat", sender: self)
            }
        }
    }
    
}
