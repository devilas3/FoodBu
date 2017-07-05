//
//  MenuViewController.swift
//  FoodBuddies
//
//  Created by Suraj Sonawane on 28/06/17.
//  Copyright © 2017 demo. All rights reserved.
//

import UIKit

class MenuViewController: UIViewController, UITableViewDataSource,UITableViewDelegate {

    
//TODO: - General
    
    var menuArray : [String] = ["My Profile","Events","Invite Friends","Payment","Verification","Change Password","Setting","About Us","Contact Us", "Terms & Conditions","Privacy Policy","Logout"]
    
//TODO: - Controls
    
    @IBOutlet weak var tblMain: UITableView!
    
//TODO: - Let's Code
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.tblMain.delegate = self
        self.tblMain.dataSource = self
        
        self.tblMain.tableFooterView = UIView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    //EOD commit

    
    
//TODO: - UITableViewDatasource Method implementation
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return menuArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        let cell = tableView.dequeueReusableCell(withIdentifier: "CellID", for: indexPath) as! MenuTableViewCell
        cell.lblTitle.text = self.menuArray[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath.row)
        let index = indexPath.row
        switch index {
        case 0:
            //My Profile
            let profVC = self.storyboard?.instantiateViewController(withIdentifier: "idMyProfileViewController") as! MyProfileViewController
            let frontView = UINavigationController.init(rootViewController:profVC)
            revealViewController().pushFrontViewController(frontView, animated: true)
            
            break;
            //
        case 1:
            
            //Event
            let eventVC = self.storyboard?.instantiateViewController(withIdentifier: "idEventsViewController") as! EventsViewController
            let frontView = UINavigationController.init(rootViewController:eventVC)
            revealViewController().pushFrontViewController(frontView, animated: true)
            
            break;
            
            //
        case 2:
            //Invite Friends
            let inviteVC = self.storyboard?.instantiateViewController(withIdentifier: "idInviteFriendsViewController") as! InviteFriendsViewController
            let frontView = UINavigationController.init(rootViewController:inviteVC)
            revealViewController().pushFrontViewController(frontView, animated: true)
            break;
        case 3:
            //Payment
            let paymentVC = self.storyboard?.instantiateViewController(withIdentifier: "idPaymentContainerViewController") as! PaymentContainerViewController
            let frontView = UINavigationController.init(rootViewController:paymentVC)
            revealViewController().pushFrontViewController(frontView, animated: true)
            break;

        case 4:
            //Verification
           /* let inviteVC = self.storyboard?.instantiateViewController(withIdentifier: "idInviteFriendsViewController") as! InviteFriendsViewController
            let frontView = UINavigationController.init(rootViewController:inviteVC)
            revealViewController().pushFrontViewController(frontView, animated: true)*/
            break;

        case 5:
            //Change password
            let inviteVC = self.storyboard?.instantiateViewController(withIdentifier: "idInviteFriendsViewController") as! InviteFriendsViewController
            let frontView = UINavigationController.init(rootViewController:inviteVC)
            revealViewController().pushFrontViewController(frontView, animated: true)
            break;

        case 6:
            //Settings
            let inviteVC = self.storyboard?.instantiateViewController(withIdentifier: "idInviteFriendsViewController") as! InviteFriendsViewController
            let frontView = UINavigationController.init(rootViewController:inviteVC)
            revealViewController().pushFrontViewController(frontView, animated: true)
            break;

        case 7:
            //About Us
            let aboutVC = self.storyboard?.instantiateViewController(withIdentifier: "idAboutUsViewController") as! AboutUsViewController
            FoodBuddiesSingleton.shared.htmlValue = 1
            let frontView = UINavigationController.init(rootViewController:aboutVC)
            revealViewController().pushFrontViewController(frontView, animated: true)
            break;
        case 8:
            //Contact Us
            let contVC = self.storyboard?.instantiateViewController(withIdentifier: "idContactUSViewController") as! ContactUSViewController
            let frontView = UINavigationController.init(rootViewController:contVC)
            revealViewController().pushFrontViewController(frontView, animated: true)
            break;
        case 9:
            //Terms & Condition
            let aboutVC = self.storyboard?.instantiateViewController(withIdentifier: "idAboutUsViewController") as! AboutUsViewController
            FoodBuddiesSingleton.shared.htmlValue = 2
            let frontView = UINavigationController.init(rootViewController:aboutVC)
            revealViewController().pushFrontViewController(frontView, animated: true)
            break;
        case 10:
            //Privacy Policy
            let aboutVC = self.storyboard?.instantiateViewController(withIdentifier: "idAboutUsViewController") as! AboutUsViewController
            FoodBuddiesSingleton.shared.htmlValue = 3
            let frontView = UINavigationController.init(rootViewController:aboutVC)
            revealViewController().pushFrontViewController(frontView, animated: true)
            break;
        case 11:
            //Logout
            let inviteVC = self.storyboard?.instantiateViewController(withIdentifier: "idInviteFriendsViewController") as! InviteFriendsViewController
            let frontView = UINavigationController.init(rootViewController:inviteVC)
            revealViewController().pushFrontViewController(frontView, animated: true)
            break;

        default:
            print("default")
            break;
        }
        
    }
    
    
    
    

}
