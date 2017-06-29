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
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        let cell = tableView.dequeueReusableCell(withIdentifier: "CellID", for: indexPath) as! MenuTableViewCell
        cell.lblTitle.text = "Label: \(indexPath.row)"
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath.row)
        let index = indexPath.row
        switch index {
        case 0:
            
            let profVC = self.storyboard?.instantiateViewController(withIdentifier: "idMyProfileViewController") as! MyProfileViewController
            let frontView = UINavigationController.init(rootViewController:profVC)
            revealViewController().pushFrontViewController(frontView, animated: true)
            
            break;
            //
        case 1:
            
            let eventVC = self.storyboard?.instantiateViewController(withIdentifier: "idEventsViewController") as! EventsViewController
            let frontView = UINavigationController.init(rootViewController:eventVC)
            revealViewController().pushFrontViewController(frontView, animated: true)
            
            break;
            
            //
        case 2:
            
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
