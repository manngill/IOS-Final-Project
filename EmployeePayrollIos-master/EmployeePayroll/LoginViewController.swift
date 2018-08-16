//
//  LoginViewController.swift
//  EmployeePayroll
//
//  Created by MacStudent on 2018-08-09.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var useridtxt: UITextField!
    @IBOutlet weak var passwordtxt: UITextField!
    
    @IBOutlet weak var rem: UISwitch!
    
    @IBAction func Loginbtn(_ sender: Any) {
        if useridtxt.text == "admin" && passwordtxt.text == "password" {
            performSegue(withIdentifier: "AddEmployeeViewController", sender: self)
            
        } else {
            let alert = UIAlertController(title: "Alert", message: "Wrong Id or Password", preferredStyle: UIAlertControllerStyle.alert)
            alert.addAction(UIAlertAction(title: "Click", style: UIAlertActionStyle.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
    }
    
    @IBAction func Registerbtn(_ sender: Any) {
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let registerViewController = storyboard?.instantiateViewController(withIdentifier: "RegisterVC") as! RegisterViewController
        self.present(registerViewController, animated: true, completion: nil)
    }
    
    @IBAction func remembermebtn(_ sender: Any) {
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
