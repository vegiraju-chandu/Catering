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
        
        self.createMainOptionsContens();
    }
    
    func createMainOptionsContens(){
        let varietiesTableView = UITableView();
        varietiesTableView.frame = CGRect(x: 0, y: 64, width: self.view.bounds.size.width, height: self.view.bounds.size.height - 64 );
        varietiesTableView.delegate = self;
        varietiesTableView.dataSource = self;
        varietiesTableView.tableFooterView = UIView(frame: CGRect.zero);
        self.view.addSubview(varietiesTableView);
    }
    
    //Mark: TableView datasource method
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1;
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell: UITableViewCell? = tableView.dequeueReusableCell(withIdentifier: "cell");
        if ( cell == nil ){
            cell = UITableViewCell(style: .default, reuseIdentifier: "cell");
        }
        cell?.textLabel?.text = "Row number : \(indexPath.row)";
        return cell!;
    }
    
    //Mark: Tableview delegate method
    
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        
        print("clicked index is \(indexPath.row)");
    }
    
}
