//
//  LoginController.swift
//  Catering
//
//  Created by Raju on 2/6/18.
//  Copyright © 2018 Raju. All rights reserved.
//

import Foundation
import UIKit

class LoginController:ParentViewController  {
    
    override func viewDidLoad() {
        super.viewDidLoad();
        
        self.showNavigationTitle(title: "Login");
        
        let button = CustomButton(frame: CGRect(x: 0, y: 0, width: 100, height: 100));
        button.setTitle("Login", for: UIControlState.normal);
        button.setTitleColor(UIColor.black, for: UIControlState.normal);
        button.center = CGPoint(x: self.view.bounds.size.width/2, y: self.view.bounds.size.height/2);
        button.buttonActionBlock = { () -> Void in
            let mainViewCtrl = MainViewController();
            self.navigationController?.pushViewController(mainViewCtrl, animated: true);
        }
        
        self.view.addSubview(button);
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
