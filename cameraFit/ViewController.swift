//
//  ViewController.swift
//  cameraFit
//
//  Created by 沈庭鋒 on 2023/3/2.
//

import UIKit

class ViewController: UIViewController {
    
 
    
    @IBOutlet weak var LoverTextField: UITextField!
    
    @IBOutlet weak var LoverDescripeTextField: UITextField!
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        LoverTextField.resignFirstResponder()
        LoverDescripeTextField.resignFirstResponder()
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "Love" {
      
            if let knowByPeopleVC = segue.destination as? knowByPeopleViewController{
               
                knowByPeopleVC.loveText = LoverTextField.text!
                knowByPeopleVC.loveTextDP = LoverDescripeTextField.text
                
            }
        }




    }
}


