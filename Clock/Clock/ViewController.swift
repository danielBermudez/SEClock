/*

This work is licensed under a Creative Commons Attribution-NonCommercial-ShareAlike
4.0 International License, by Yong Bakos.

*/

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var timeLabel: UILabel!
    var programmaticalLabel : UILabel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        timeLabel.textColor = #colorLiteral(red: 1, green: 0.5843137255, blue: 0, alpha: 0.5289223031)
       timeLabel .text = "Current Time"
        programmaticalLabel = UILabel(frame: CGRect(x: 0, y: 0, width: 250, height: 100))
        programmaticalLabel?.center = CGPoint(x:self.view.center.x , y: self.view.center.y)
        programmaticalLabel?.textAlignment = .center
        programmaticalLabel?.textColor = #colorLiteral(red: 0.9477215409, green: 1, blue: 0, alpha: 1)
        programmaticalLabel?.text = "I'm a homework !"
        self.view.addSubview(programmaticalLabel!)
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

