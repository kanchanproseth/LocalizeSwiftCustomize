//
//  ViewController.swift
//  Localization102
//
//  Created by Moath_Othman on 1/31/16.
//  Copyright © 2016 Moath_Othman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var programmaticallylocalizedLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.programmaticallylocalizedLabel.text = NSLocalizedString("localize me please", comment: "Localize me Label in the main scene")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @IBAction func switchTheLanguage(_ sender: UIButton) {
        if L102Language.currentAppleLanguage() == "en" {
            L102Language.setAppleLAnguageTo(lang: "km")
        } else {
            L102Language.setAppleLAnguageTo(lang: "en")
        }
        let rootviewcontroller: UIWindow = ((UIApplication.shared.delegate?.window)!)!
        rootviewcontroller.rootViewController = self.storyboard?.instantiateViewController(withIdentifier: "rootnav")

    }
 
    
}

