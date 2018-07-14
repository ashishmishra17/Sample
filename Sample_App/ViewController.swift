//
//  ViewController.swift
//  Sample_App
//
//  Created by Raj Kaushal on 7/14/18.
//  Copyright © 2018 Raj Kaushal. All rights reserved.
//

import UIKit
import AppCenterAnalytics
import AppCenter

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        print("What is this")
        MSAppCenter.setLogLevel(.verbose)
    }
    
    @IBAction func click_tapped(_ sender : UIButton){
        MSAnalytics.trackEvent("My custom event 2")
        let arr = NSMutableArray()
        arr.add("1")
        arr.add("1")
        arr.add("1")
        for index in 0..<3 {
           print("%@", arr.object(at: index+1))
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

