/*

This work is licensed under a Creative Commons Attribution-NonCommercial-ShareAlike
4.0 International License, by Yong Bakos.

*/

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var timeLabel: UILabel!
    let clock = CLock()
    
    override func viewDidLoad() {
        print("viewDidLoad")
        super.viewDidLoad()
        timeLabel.textColor = #colorLiteral(red: 1, green: 0.5843137255, blue: 0, alpha: 0.5289223031)
        let formatter = DateFormatter()
        formatter.timeStyle = .short
  
       timeLabel .text = "\(formatter.string(from: clock.currentTime ) )"
        
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("viewWillAppear")
        let formatter = DateFormatter()
        formatter.timeStyle = .short
        
        timeLabel .text = "\(formatter.string(from: clock.currentTime ) )"
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
      
    }

}

