//
//  GradientView.swift
//  ChatAppWithAPI
//
//  Created by Huy Vu on 6/6/19.
//  Copyright © 2019 Huy Vu. All rights reserved.
//

import UIKit

@IBDesignable
class GradientView: UIView {
    
    @IBInspectable var topColor: UIColor = #colorLiteral(red: 0.2901960784, green: 0.3019607843, blue: 0.8470588235, alpha: 1) {
        didSet {
            self.setNeedsLayout()
        }
    }
    @IBInspectable var bottomColor: UIColor = #colorLiteral(red: 0.1725490196, green: 0.831372549, blue: 0.8470588235, alpha: 1) {
        didSet {
            self.setNeedsLayout()
        }
    }
    
    override func layoutSubviews() {
        let gradientLayer = CAGradientLayer()
        //phải cung cấp cho gradientLayer topColor & bottomColor, độ lớn của hình cần phủ gradient color (tính bằng cách cung cấp toạ độ bắt đầu và toạ độ kết thúc).
        gradientLayer.colors = [topColor.cgColor, bottomColor.cgColor, topColor.cgColor]
        gradientLayer.startPoint = CGPoint(x: 0, y: 0)
        gradientLayer.endPoint = CGPoint(x: 1, y: 1)
        gradientLayer.frame = self.bounds
        self.layer.insertSublayer(gradientLayer, at: 0) //at: 0 ==> add subLayer như là sub layer đầu tiên.
    }
    
}
