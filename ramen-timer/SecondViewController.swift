//
//  SecondViewController.swift
//  ramen-timer
//
//  Created by Shogo Yamamoto on 2021/03/16.
//  Copyright © 2021年 Yamamoto Shogo. All rights reserved.
//

import UIKit
import AudioToolbox

class SecondViewController: UIViewController {
    
    var timer: Timer?
    var currentSeconds = 0
    
    
    @IBOutlet weak var label: UILabel!
    
    
    
    
    @IBOutlet weak var stopButton: UIButton! //停止ボタン
    
    
    @IBOutlet weak var startButton: UIButton!//再開ボタン
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }


    @IBAction func tenSecButtonTapped(_ sender: UIButton) {
        start(seconds: 10)
    }
    
    @IBAction func threeMinButtonTapped(_ sender: UIButton) {
        start(seconds: 180)
    }
    
    
    @IBAction func fiveMinButtonTapped(_ sender: UIButton) {
        start(seconds: 300)
    }
    
    func start(seconds: Int){
        currentSeconds = seconds
        label.text = "残り\(currentSeconds)秒"
        timer = Timer.scheduledTimer(timeInterval: 1.0,
                                     target: self,
                                     selector: #selector(SecondViewController.update),
                                     userInfo: nil,
                                     repeats: true)
    } //タイマーを開始するメソッド
    
    @objc func update(){
        currentSeconds -= 1
        label.text = "残り\(currentSeconds)秒"
        if (currentSeconds == 0){
            timer?.invalidate()
            let soundId: SystemSoundID = 1005
            AudioServicesPlayAlertSound(soundId)
        }
    } //更新するメソッド
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
