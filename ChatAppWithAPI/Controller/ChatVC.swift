//
//  ChatVC.swift
//  ChatAppWithAPI
//
//  Created by Huy Vu on 6/6/19.
//  Copyright © 2019 Huy Vu. All rights reserved.
//

import UIKit

class ChatVC: UIViewController {
    
    //outlets
    @IBOutlet weak var menuBtn: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        menuBtn.addTarget(self.revealViewController(), action: #selector(SWRevealViewController.revealToggle(_:)), for: UIControlEvents.touchUpInside)
        //add action cho có thể drage menu ra & tap để back về
        self.view.addGestureRecognizer((self.revealViewController()?.panGestureRecognizer())!)
        self.view.addGestureRecognizer((self.revealViewController()?.tapGestureRecognizer())!)
    }


}
