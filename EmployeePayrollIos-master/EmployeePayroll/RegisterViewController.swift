//
//  RegisterViewController.swift
//  EmployeePayroll
//
//  Created by MacStudent on 2018-08-09.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import UIKit

class RegisterViewController: UIViewController {
    
    public var registerArray: [SignUp] = [SignUp]()
    
    @IBOutlet weak var nametxt: UITextField!
    @IBOutlet weak var useridtxt: UITextField!
    @IBOutlet weak var passwordtxt: UITextField!
    @IBOutlet weak var reenterpasswordtxt: UITextField!
   
    
    @IBOutlet weak var registerbtn: UIButton!
    
    @IBAction func registerbtn(_ sender: Any) {
        let  signUpEmployee = SignUp()
        signUpEmployee.empName = nametxt.text!
        signUpEmployee.empEmailId = useridtxt.text!
        // confirming both password are same
        if (passwordtxt.text == reenterpasswordtxt.text ){
            signUpEmployee.empPassword = passwordtxt.text!
            registerArray.append(signUpEmployee)
            let myAlert = UIAlertController(title: "Alert", message: "SignUp Sucessfully!! Move to login Screen", preferredStyle: UIAlertControllerStyle.alert)
            let okAction = UIAlertAction(title: "ok", style: UIAlertActionStyle.default, handler: nil)
            myAlert.addAction(okAction)
            self.present(myAlert,animated: true, completion: nil)
        } else {
            let myAlert = UIAlertController(title: "Alert", message: "password Do not Match", preferredStyle: UIAlertControllerStyle.alert)
            let okAction = UIAlertAction(title: "ok", style: UIAlertActionStyle.default, handler: nil)
            myAlert.addAction(okAction)
            self.present(myAlert,animated: true, completion: nil)
        }
    }
    
    @IBAction func backbtn(_ sender: Any) {
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
