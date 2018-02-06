//
//  CustomButton.swift
//  Catering
//
//  Created by Raju on 2/6/18.
//  Copyright © 2018 Raju. All rights reserved.
//

import UIKit

class CustomButton: UIButton {

    
    var buttonActionBlock = { () -> Void in
        
    }

    override func draw(_ rect: CGRect) {
        super.draw(rect);
        self.addTarget(self, action: #selector(buttonClicked), for: UIControlEvents.touchUpInside);
    }

    @objc func buttonClicked(){
        print("button clicked method from custom button");
        buttonActionBlock();
    }
    
}
