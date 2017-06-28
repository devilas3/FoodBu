//
//  SignupSecondViewController.swift
//  FoodBuddies
//
//  Created by Suraj Sonawane on 28/06/17.
//  Copyright © 2017 demo. All rights reserved.
//

import UIKit
import Material

class SignupSecondViewController: UIViewController {


//TODO: - General
    
    
//TODO: - Controls
    
    @IBOutlet weak var txtPhoneNumber: TextField!
    
    @IBOutlet weak var txtFirstName: TextField!
    
    @IBOutlet weak var txtEmailID: TextField!
    
    @IBOutlet weak var txtAddress: TextView!
    
    @IBOutlet weak var txtPostcode: TextField!
    
    @IBOutlet weak var txtPassword: TextField!
    
    @IBOutlet weak var txtConfPassword: TextField!
    
    @IBOutlet weak var btnCheckMark: UIButton!
    
    @IBOutlet weak var btnRegisterOutlet: Button!
   
    
    
    
//TODO: - Let's Code
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
//TODO: - UIButton Action

    @IBAction func btnRegisterAction(_ sender: Any) {
    }
    
    
    
}
