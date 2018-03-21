//
//  ViewController.swift
//  cryptotradingapp
//
//  Created by Kevin on 3/21/18.
//  Copyright © 2018 Kevin Diem. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var mainView: UIView!
    
    @IBOutlet var leadingC: NSLayoutConstraint!
    @IBOutlet var trailingC: NSLayoutConstraint!
    
    var menuIsVisible = false
    
    @IBAction func menuBtnTapped ( _sender: Any) {
        
        // if main menu is not visible then move the main View back gto where it used to be.
        if !menuIsVisible {
            leadingC.constant  = 150
            trailingC.constant = 150
            menuIsVisible = true
        } else {
            leadingC.constant = 0
            trailingC.constant = 0
            menuIsVisible = false
        }
        
        UIView.animate(withDuration: 0.2, delay: 0.0, options: .curveEaseIn, animations: {
            self.view.layoutIfNeeded()
        }) { (animationComplete) in
            print("The animation is complete!")
        }
    
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

