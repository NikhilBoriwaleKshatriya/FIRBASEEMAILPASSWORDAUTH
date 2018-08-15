//
//  RegisterVC.swift
//  FIRBASEEMAILPASSWORDAUTH
//
//  Created by Nikhil Boriwale on 26/10/17.
//  Copyright © 2017 Webcubator. All rights reserved.
//

import UIKit
import FirebaseAuth

class RegisterVC: UIViewController,UITextFieldDelegate {

    @IBOutlet weak var emailid: UITextField!
    @IBOutlet weak var password: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    
    @IBAction func tnregister(_ sender: Any) {
        if let email =  emailid.text,let pass = password.text{
            Auth.auth().createUser(withEmail: emailid.text!, password: password.text!,completion : { (user, error) in
                if let firbaseerror = error
                {
                    print(firbaseerror.localizedDescription)
                    return
                   
                    
                }
               print("success!")
                let alert = UIAlertController(title: "Register", message: " Register Successfully Now Go TO Loging    ", preferredStyle: UIAlertControllerStyle.alert)
                alert.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.default, handler: nil))
                self.present(alert, animated: true, completion: nil)
                
                
            })
            
         
        }
        
        
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
