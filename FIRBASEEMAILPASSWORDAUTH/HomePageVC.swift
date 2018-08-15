//
//  HomePageVC.swift
//  FIRBASEEMAILPASSWORDAUTH
//
//  Created by Nikhil Boriwale on 26/10/17.
//  Copyright © 2017 Webcubator. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth

class HomePageVC: UIViewController {

    @IBAction func signout(_ sender: Any) {
        
        
        do
        {
            try
                Auth.auth().signOut()
            dismiss(animated: true, completion: nil)
        }
        catch{
            print("there was problem logging out")
        }
    
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
