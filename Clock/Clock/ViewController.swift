/*

This work is licensed under a Creative Commons Attribution-NonCommercial-ShareAlike
4.0 International License, by Yong Bakos.

*/

import UIKit
import Foundation
class ViewController: UIViewController {
    let clock = CLock()
  
    
    var timer : Timer?
    
    @IBOutlet weak var timeLabel: UILabel!
    
   
    
    override func viewDidLoad() {
        print("viewDidLoad")
        super.viewDidLoad()
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.updateTimeLabel), userInfo: nil, repeats: true)
            }
    deinit{
        if let timer = self.timer{
       timer .invalidate()
        }
    }
    @objc func updateTimeLabel(){
        timeLabel.textColor = #colorLiteral(red: 0.182079196, green: 0.8254847527, blue: 0.6376379132, alpha: 1)
        let formatter = DateFormatter()
        formatter.timeStyle = .long
        timeLabel .text = "\(formatter.string(from: clock.currentTime ) )"
    }
 
 
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("viewWillAppear")
       updateTimeLabel()
    }
   

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
      
    }


}
