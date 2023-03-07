//
//  kownByPeopleViewController.swift
//  cameraFit
//
//  Created by 沈庭鋒 on 2023/3/2.
//

import UIKit

class knowByPeopleViewController: UIViewController {
    
    @IBOutlet weak var SelfTextField: UITextField!
    
    @IBOutlet weak var SelfDescripeTextField: UITextField!
    
    var loveText : String?
    var loveTextDP : String?


    override func viewDidLoad() {
        super.viewDidLoad()
        
        SelfTextField.resignFirstResponder()
        SelfDescripeTextField.resignFirstResponder()

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
      
            if let woodVC = segue.destination as? WoodViewController{
               
                woodVC.loveText = loveText
                woodVC.loveTextDP = loveTextDP
                woodVC.selfText = SelfTextField.text
                woodVC.selfTextDP = SelfDescripeTextField.text
                
            }


    }

}
