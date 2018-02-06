//
//  UserProfileController.swift
//  Catering
//
//  Created by Raju on 2/6/18.
//  Copyright © 2018 Raju. All rights reserved.
//

import Foundation
import UIKit

class UserProfileController: ParentViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad();
        
        self.showNavigationTitle(title: "User Profile");
        self.showNavigationWithLeftButton(title: "X");
        
        self.leftButton.buttonActionBlock = { () -> Void in
            self.dismiss(animated: true, completion: nil);
        }
    }
    
    
    
}
