//
//  ViewController.swift
//  Chit Chat
//
//  Created by Mizanur Remon on 12/2/20.
//  Copyright © 2020 Mizanur Remon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var signUpoutlet: UIButton!
    
    @IBOutlet weak var signInoutlet: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        signUpoutlet.layer.cornerRadius = 6
        signInoutlet.layer.cornerRadius = 6
    }

    @IBAction func exit(_ sender: Any) {
        let alert = UIAlertController(title: "Quit!", message: "Are you sure?", preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "No", style: .cancel, handler: nil))
        
        alert.addAction(UIAlertAction(title: "Yes", style: .destructive, handler: { _ in
        UIControl().sendAction(#selector(NSXPCConnection.suspend), to: UIApplication.shared, for: nil)}))
        
        present(alert, animated: true, completion: nil)
    }
    

}

