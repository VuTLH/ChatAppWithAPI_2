//
//  LoginVC.swift
//  ChatAppWithAPI
//
//  Created by Huy Vu on 6/7/19.
//  Copyright © 2019 Huy Vu. All rights reserved.
//

import UIKit

class LoginVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()


    }
    
    @IBAction func closeBtnPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func createAccBtnPressed(_ sender: Any) {
        performSegue(withIdentifier: TO_CREATEO_ACCOUNT, sender: nil)
    }
    
}
