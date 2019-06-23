//
//  MenuVuewController.swift
//  Login
//
//  Created by lavaspoon on 18/06/2019.
//  Copyright © 2019 lavaspoon. All rights reserved.
//

import UIKit

class MenuViewController : UIViewController{
    @IBAction func backClicked2(_ sender: AnyObject) {
                self.presentingViewController?.dismiss(animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

