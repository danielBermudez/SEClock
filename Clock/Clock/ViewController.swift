/*

This work is licensed under a Creative Commons Attribution-NonCommercial-ShareAlike
4.0 International License, by Yong Bakos.

*/

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var timeLabel: UILabel!
    // The property has to have a explicit datatype because in this case swint can't infere wich type it is.
    var clock = CLock?.init(CLock())
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        timeLabel.textColor = #colorLiteral(red: 1, green: 0.5843137255, blue: 0, alpha: 0.5289223031)
        let formatter = DateFormatter()
        formatter.timeStyle = .short
      
        clock!.currentTime = Date()
       timeLabel .text = "\(formatter.string(from: clock!.currentTime ) )"
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

