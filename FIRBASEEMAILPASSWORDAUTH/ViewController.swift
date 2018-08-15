//
//  ViewController.swift
//  FIRBASEEMAILPASSWORDAUTH
//
//  Created by Nikhil Boriwale on 26/10/17.
//  Copyright © 2017 Webcubator. All rights reserved.
//

import UIKit
import FirebaseAuth
import Firebase

class ViewController: UIViewController ,UITextFieldDelegate{

    @IBOutlet weak var txtemailid: UITextField!
    @IBOutlet weak var txtpassword: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
 /*   override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        if Auth.auth().currentUser != nil
        {
            self.presentLoggedInScreen()
        
    }
    
}*/
    func textFieldDidBeginEditing(_ textField: UITextField) {
        if (txtemailid == textField) {
            txtemailid.text = ""
        }
        else if (txtpassword == textField) {
            txtpassword.text = ""
        }
    }
    @IBAction func btnlogin(_ sender: Any) {
        
        if let email =  txtemailid.text,let pass = txtpassword.text{
            Auth.auth().signIn(withEmail: txtemailid.text!, password: txtpassword.text!,completion : { (user, error) in
                if let firbaseerror = error
                {
                    print(firbaseerror.localizedDescription)
                    return
                    
                    
                }
                print("success!")
                self.presentLoggedInScreen()
                
                
            })
            
            
        }
        
    }
func presentLoggedInScreen()
{
    let storyboard = UIStoryboard(name: "Main", bundle: nil)
    let controller = storyboard.instantiateViewController(withIdentifier: "HomePageVC")
    self.present(controller, animated: true, completion: nil)
    
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

