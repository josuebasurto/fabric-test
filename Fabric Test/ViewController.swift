//
//  ViewController.swift
//  Fabric Test
//
//  Created by Josue Basurto on 1/29/17.
//  Copyright © 2017 jelp. All rights reserved.
//

import UIKit
import Crashlytics



class ViewController: UIViewController {
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @IBAction func forceACrash(_ sender: UIButton) {
        //Forced Crash (Tracked)
        Answers.logCustomEvent(withName: "Forced Crash",
                                       customAttributes: [:])
        Crashlytics.sharedInstance().crash()
    }
    


}

