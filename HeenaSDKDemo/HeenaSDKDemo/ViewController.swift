//
//  ViewController.swift
//  HeenaSDKDemo
//
//  Created by Heena on 22/04/20.
//  Copyright © 2020 Heena. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.green
        addSubView()
    }

    func addSubView(){
        guard let subView = Bundle.main.loadNibNamed("DemoView", owner: self, options: nil)?.first as? DemoView else  {return}
        subView.frame =  CGRect(x: 20, y:  subView.frame.height/2, width: self.view.frame.width - 40, height: 100)
      //  subView.center = CGPoint(x: subView.frame.width/2, y: subView.frame.height/2)
        
        self.view.addSubview(subView)
    }

}

