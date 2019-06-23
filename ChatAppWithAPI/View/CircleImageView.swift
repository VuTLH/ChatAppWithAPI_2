//
//  CircleImageView.swift
//  ChatAppWithAPI
//
//  Created by Huy Vu on 6/11/19.
//  Copyright © 2019 Huy Vu. All rights reserved.
//

import UIKit

@IBDesignable
class CircleImageView: UIImageView {

    override func awakeFromNib() {
        setUpView()
    }
    
    func setUpView() {
        self.layer.cornerRadius = self.frame.width / 2
        self.clipsToBounds = true
    }
    
    override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        setUpView()
    }
    
}
