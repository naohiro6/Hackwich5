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

    var currentValue: Int = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func myGuessButtonPressed(_ sender: Any) {


   let message = "The value is: \(currentValue)"
        let alert = UIAlertController(title: "Hello World", message:message, preferredStyle: .alert)

        let action = UIAlertAction(title: "Awesome", style:.default, handler: nil)

        alert.addAction(action)

        present(alert, animated: true, completion: nil)


    }

    @IBAction func sliderHasMoved(_ sender: Any) {
        currentValue = lroundf(slider.value)
        print("The value of the slider is:\(currentValue)")

    }
}

