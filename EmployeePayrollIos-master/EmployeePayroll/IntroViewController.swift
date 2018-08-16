//
//  ViewController.swift
//  EmployeePayroll
//
//  Created by MacStudent on 2018-08-09.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import UIKit

class IntroViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        perform(#selector(self.shownavcontroller), with: nil, afterDelay: 3)
        // Do any additional setup after loading the view, typically from a nib.
    }
    @objc func shownavcontroller()
    {
        performSegue(withIdentifier: "showloginscreen", sender: self)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}

