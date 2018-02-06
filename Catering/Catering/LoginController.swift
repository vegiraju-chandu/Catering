//
//  LoginController.swift
//  Catering
//
//  Created by Raju on 2/6/18.
//  Copyright © 2018 Raju. All rights reserved.
//

import Foundation
import UIKit
import FacebookLogin
import FacebookCore

class LoginController:ParentViewController  {
    
    override func viewDidLoad() {
        super.viewDidLoad();
        
        self.showNavigationTitle(title: "Login");
        
        if let accessToken = AccessToken.current {
            print("Access token is \(accessToken)")
        }else{
            // User is logged in, use 'accessToken' here.
            let myLoginButton = UIButton(type: .custom);
            myLoginButton.backgroundColor = UIColor.darkGray;
            myLoginButton.frame = CGRect(x: 0, y: 0, width: 180, height: 40);
            myLoginButton.center = view.center;
            myLoginButton.setTitle("Login Facebook", for: UIControlState.normal);
            myLoginButton.addTarget(self, action: #selector(self.loginButtonClicked), for: UIControlEvents.touchUpInside);
            
            // Add the button to the view
            view.addSubview(myLoginButton)
        }
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @objc func loginButtonClicked() {
        let loginManager = LoginManager()
        loginManager.logIn(readPermissions: [.publicProfile], viewController: self) { (loginResult) in
            print(loginResult);
    
            let connection = GraphRequestConnection()
            connection.add(GraphRequest(graphPath: "/me")) { httpResponse, result in
                switch result {
                case .success(let response):
                    print("Graph Request Succeeded: \(response)")
                case .failed(let error):
                    print("Graph Request Failed: \(error)")
                }
            }
            connection.start()
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
