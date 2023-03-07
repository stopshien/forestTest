//
//  WoodViewController.swift
//  cameraFit
//
//  Created by 沈庭鋒 on 2023/3/2.
//

import UIKit

//使用UIPickerView的關係，必須加入UIPickerView的協定以及實作

class WoodViewController: UIViewController, UIPickerViewDelegate,UIPickerViewDataSource{

    
    @IBOutlet weak var woodPicker: UIPickerView!
    
    
    var loveText : String?
    var loveTextDP : String?
    var selfText :  String?
    var selfTextDP : String?
    
    var woodSeems : String = "感性"
    var woodSeems2 : String = "比較喜歡條理分明的感覺，雖說能夠降低在做事情上面的犯錯機率，但有時又會因為想得太多而錯過一些事情"
    
    let wood = ["整齊","散亂"]
    
    

   
    override func viewDidLoad() {
        super.viewDidLoad()

        // 設定 UIPickerView 的 delegate 及 dataSource
        woodPicker.delegate = self
        woodPicker.dataSource = self
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
      
            if let landscapeVC = segue.destination as? landscapeViewController{
              
                landscapeVC.loveText = loveText
                landscapeVC.loveTextDP = loveTextDP
                landscapeVC.selfText = selfText
                landscapeVC.selfTextDP = selfTextDP
                landscapeVC.woodSeems = woodSeems
                landscapeVC.woodSeems2 = woodSeems2
                
            }


    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return wood.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if component == 0 {
            return wood[row] }else{return nil}
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
//        woodSeems = wood[row]
        if row == 0{
            woodSeems = "理性"
            woodSeems2 = "比較喜歡條理分明的感覺，雖說能夠降低在做事情上面的犯錯機率，但有時又會因為想得太多而錯過一些事情"
        }else{
            woodSeems = "感性"
            woodSeems2 = "比起每件事情是否合理，也許更重視自己擁有的感覺，喜歡簡單快速的將事情完成，卻又常忽略一些小細節而吃了虧"
        }
    }

}
