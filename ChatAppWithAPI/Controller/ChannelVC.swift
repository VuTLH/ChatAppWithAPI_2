//
//  ChannelVC.swift
//  ChatAppWithAPI
//
//  Created by Huy Vu on 6/6/19.
//  Copyright © 2019 Huy Vu. All rights reserved.
//

import UIKit

class ChannelVC: UIViewController {
    
    //outlets
    @IBOutlet weak var loginBtn: UIButton!
    @IBOutlet weak var userImg: CircleImageView!
    @IBAction func prepareForUnwind(segue: UIStoryboardSegue) {} //tạo unwind Segue để back từ createAccVC về Channel VC.
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.revealViewController()?.rearViewRevealWidth = self.view.frame.size.width - 60 //set cho rear view khi hiện ra thì front view width chỉ còn 60
        //add việc theo dõi user data did change
        NotificationCenter.default.addObserver(self, selector: #selector(ChannelVC.userDataDidChanged(_:)), name: NOTIF_USER_DATA_DID_CHANGED, object: nil)
    }
    
    @IBAction func loginBtnPressed(_ sender: Any) {
        
        if AuthService.instance.isLoggedIn {
            //show profile page
            /* show xibs file */
            let profile = ProfileVC()
            profile.modalPresentationStyle = .custom //present style
            present(profile, animated: true, completion: nil)
        }else {
            performSegue(withIdentifier: TO_LOGIN, sender: nil)
        }
        
    }
    //nếu đang login thì set avatar & name cho image & button Login
    @objc func userDataDidChanged(_ notif: Notification) {
        if AuthService.instance.isLoggedIn {
            loginBtn.setTitle(UserDataService.instance.name, for: UIControlState.normal)
            userImg.image = UIImage(named: UserDataService.instance.avatarName)
            userImg.backgroundColor = UserDataService.instance.returnUIColor(components: UserDataService.instance.avatarColor)
        }else {
            loginBtn.setTitle("Login", for: UIControlState.normal)
            userImg.image = UIImage(named: "menuProfileIcon")
            userImg.backgroundColor = UIColor.clear
        }
    }
    
}
