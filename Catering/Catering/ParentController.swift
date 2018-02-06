//
//  ParentController.swift
//  Catering
//
//  Created by Raju on 2/6/18.
//  Copyright © 2018 Raju. All rights reserved.
//

import Foundation
import UIKit

class ParentViewController: UIViewController {
    
    var navigationView: UIView = UIView();
    var titleLable: UILabel = UILabel();
    var leftButton: CustomButton = CustomButton();
    var rightButton: CustomButton = CustomButton();
    
    override func loadView() {
        super.loadView();
        
        //This is to 
        self.navigationController?.setNavigationBarHidden(true, animated: true);
        
        navigationView = UIView(frame: CGRect(x: 0, y: 20, width: self.view.bounds.size.width, height: 44));
        navigationView.backgroundColor = UIColor.lightGray;
        
        
        self.view.backgroundColor = UIColor.white;
        
        self.view.addSubview(navigationView);
    }
    
    func showNavigationTitle(title:String ){
        
        titleLable.frame = CGRect(x: 45, y: 0, width: self.navigationView.bounds.size.width - 80 , height: self.navigationView.bounds.size.height);
        titleLable.font = UIFont.systemFont(ofSize: 12);
        titleLable.text = title;
        titleLable.textColor = UIColor.white;
        titleLable.textAlignment = NSTextAlignment.center;
        
        navigationView.addSubview(titleLable);
    }
    
    func showNavigationWithLeftButton(title:String){
        
        leftButton.frame =  CGRect(x: 0, y: 2.5, width: 40, height: 40);
        leftButton.setTitle(title, for: UIControlState.normal);
        leftButton.titleLabel?.font = UIFont.systemFont(ofSize: 10);
        navigationView.addSubview(leftButton);
    }
    
    func showNavigationWithRightButton(title:String){
        
        rightButton.frame =  CGRect(x: self.navigationView.bounds.size.width - 45, y: 2.5, width: 40, height: 40);
        rightButton.setTitle(title, for: UIControlState.normal);
        rightButton.titleLabel?.font = UIFont.systemFont(ofSize: 10);
        
        navigationView.addSubview(rightButton);
    }
    
    
    
    
    
}
