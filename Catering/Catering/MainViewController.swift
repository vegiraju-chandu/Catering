//
//  MainViewController.swift
//  Catering
//
//  Created by Raju on 2/6/18.
//  Copyright © 2018 Raju. All rights reserved.
//

import Foundation
import UIKit

class MainViewController: ParentViewController, UITableViewDelegate, UITableViewDataSource {
    
    override func viewDidLoad() {
        super.viewDidLoad();
        
        self.showNavigationTitle(title: "HomeScreen");
        self.showNavigationWithLeftButton(title: "Back");
        self.leftButton.buttonActionBlock = { () -> Void in
            self.navigationController?.popViewController(animated: true);
        }
        
        self.showNavigationWithRightButton(title: "User");
        self.rightButton.buttonActionBlock = { () -> Void in
            
            let userProfile = UserProfileController();
            self.present(userProfile, animated: true, completion: nil);
        }
    }
    
    func createMainOptionsContens(){
        let varietiesTableView = UITableView();
        varietiesTableView.frame = CGRect(x: 0, y: self.navigationItem.frame.maxY, width: self.bounds.size.width, height: self.view.bounds.size.height - self.navigationItem.frame.maxY );
        varietiesTableView.delegate = self;
        varietiesTableView.dataSource = self;
        self.view.addSubview(varietiesTableView);
    }
    
    
    
}
