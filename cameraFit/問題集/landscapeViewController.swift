//
//  LoverViewController.swift
//  cameraFit
//
//  Created by 沈庭鋒 on 2023/3/2.
//

import UIKit

class landscapeViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    
    @IBOutlet weak var landscapePicker: UIPickerView!

    
    var loveText : String?
    var loveTextDP : String?
    var selfText :  String?
    var selfTextDP : String?
    var woodSeems : String?
    var woodSeems2 : String?
 
    let landscape = ["被大樹環繞著" , "遼闊的大草原"]
    
    var landScapeMeanig : String = "警戒他人"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        landscapePicker.delegate = self
        landscapePicker.dataSource = self
      
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
      
            if let EndinVC = segue.destination as? EndingViewController{
              
                EndinVC.loveText = loveText
                EndinVC.loveTextDP = loveTextDP
                EndinVC.selfText = selfText
                EndinVC.selfTextDP = selfTextDP
                EndinVC.woodSeems = woodSeems
                EndinVC.woodSeems2 = woodSeems2
                EndinVC.landScapeMeanig = landScapeMeanig
                
            }


    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return landscape.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if component == 0 {
            return landscape[row] }else{return nil}
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if row == 0{
            landScapeMeanig = "警戒他人"
        }else{
            landScapeMeanig = "平易近人"
        }
    }

}

   

