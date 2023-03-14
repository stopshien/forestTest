//
//  EndingViewController.swift
//  cameraFit
//
//  Created by 沈庭鋒 on 2023/3/2.
//

import UIKit
import AVFAudio

class EndingViewController: UIViewController{
    
    let synthesizer = AVSpeechSynthesizer()

    
    var loveText : String?
    var loveTextDP : String?
    var selfText :  String?
    var selfTextDP : String?
    var woodSeems : String?
    var woodSeems2 : String?
    var landScapeMeanig : String?
    

    
 
    
    @IBOutlet weak var EndingTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
              
        EndingTextView.text = "心中期盼理想的另一伴，會是像\(loveText ?? "")的角色，並且希望他是一個\(loveTextDP ?? "")的人。\n" + " 在別人的眼中，你的形象猶如\(selfText ?? "")般\(selfTextDP ?? "")。\n" + "你的內心較多時候偏向\(woodSeems ?? "")一點，\(woodSeems2 ?? "")。\n" + "與他人相處時大多也表現的\(landScapeMeanig ?? "")一點。"
        
        let utterance =  AVSpeechUtterance(string: EndingTextView.text)
        utterance.voice = AVSpeechSynthesisVoice(language: "zh-TW")
        utterance.volume = 0.5
        utterance.rate = 0.1
        utterance.pitchMultiplier = 0.5
        synthesizer.speak(utterance)
      

    }
    
    //使用popToRootViewController直接回到第一頁，之前填過的field也會重置。
    @IBAction func AgainButton(_ sender: Any) {
        navigationController?.popToRootViewController(animated: true)
    }
    
}

