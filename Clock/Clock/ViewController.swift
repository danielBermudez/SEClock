/*

This work is licensed under a Creative Commons Attribution-NonCommercial-ShareAlike
4.0 International License, by Yong Bakos.

*/

import UIKit
import Foundation
class ViewController: UIViewController {
    let clock = CLock()
  
    
    
    
    @IBOutlet weak var timeLabel: UILabel!
    
   
    
    override func viewDidLoad() {
        print("viewDidLoad")
        super.viewDidLoad()
        timeLabel.textColor = #colorLiteral(red: 1, green: 0.5843137255, blue: 0, alpha: 0.5289223031)
        let formatter = DateFormatter()
        formatter.timeStyle = .short
  
       timeLabel .text = "\(formatter.string(from: clock.currentTime ) )"
        NotificationCenter.default.addObserver(self, selector: #selector(ViewController.updateTimeLabel), name: UIApplication.willEnterForegroundNotification, object: nil)
            }
    deinit{
        NotificationCenter.default.removeObserver(self)
    }
    @objc func updateTimeLabel(){
        let formatter = DateFormatter()
        formatter.timeStyle = .short
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
