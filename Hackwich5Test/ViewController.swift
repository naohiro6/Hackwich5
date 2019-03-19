//
//  ViewController.swift
//  Hackwich5Test
//
//  Created by Marion Ano on 3/6/19.
//  Copyright © 2019 Marion Ano. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var slider: UISlider!
    //P5S1
    @IBOutlet weak var targetLabel: UILabel!
    var currentValue: Int = 0
    //P2S3
    var targetValue: Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        currentValue = lroundf(slider.value)
        //P2S4
        //targetValue = 1 + Int(arc4random_uniform(100))

        startNewRound()

        //P8S1A
        let thumbImageNormal = UIImage(named: "SliderThumb-Normal")
        //P81B
        slider.setThumbImage(thumbImageNormal, for: .normal)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func myGuessButtonPressed(_ sender: Any) {

        //P2S5
        let message = "The value is: \(currentValue)" + "\nThe target value is:\(targetValue)"
        let alert = UIAlertController(title: "Hello World", message:message, preferredStyle: .alert)

        let action = UIAlertAction(title: "Awesome", style:.default, handler: nil)

        alert.addAction(action)

        present(alert, animated: true, completion: nil)

        //P3S4

        startNewRound()


    }

    @IBAction func sliderHasMoved(_ sender: Any) {
//this is the code block
        currentValue = lroundf(slider.value)
        print("The value of the slider is:\(currentValue)")
    }



    //P3S1
    func startNewRound(){
        targetValue = 1 + Int(arc4random_uniform(100))
        currentValue = 50
        //Part3
        slider.value = Float(currentValue)
        //P5S3
        updateTargetLabel()
    }

    //P5S2-A
    func updateTargetLabel(){
        targetLabel.text = String(targetValue)

    }
}

