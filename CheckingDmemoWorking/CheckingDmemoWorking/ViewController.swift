//
//  ViewController.swift
//  CheckingDmemoWorking
//
//  Created by Heena on 22/04/20.
//  Copyright © 2020 Heena. All rights reserved.
//

import UIKit
import HeenaSDKDemo

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.yellow
        let string = Manager.share.didSomethings()
        print(string)
        
        Manager.share.openSDK()
    }


}

