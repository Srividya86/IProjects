//
//  ViewController.swift
//  ColorMix
//
//  Created by Attuluri, Srividya (CONT) on 11/6/17.
//  Copyright © 2017 Attuluri, Srividya. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
//        colorView.backgroundColor = .green
        updateColor()
        colorView.layer.borderWidth = 5
        colorView.layer.cornerRadius = 20
        colorView.layer.borderColor = UIColor.black.cgColor
        updateControls()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var redSwitch: UISwitch!
    
    @IBOutlet weak var blueSwitch: UISwitch!
    @IBOutlet weak var greenSwitch: UISwitch!
    @IBOutlet weak var colorView: UIView!
    
    @IBOutlet weak var blueSlider: UISlider!
    
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var redSlider: UISlider!
    @IBAction func switchChanged(_ sender: UISwitch) {
        updateColor()
        updateControls()
    }
    func updateColor() {
        var red:CGFloat = 0
        var green:CGFloat = 0
        var blue:CGFloat = 0
        if redSwitch.isOn {
            red = CGFloat(redSlider.value)
        }
        if greenSwitch.isOn {
            green = CGFloat(greenSlider.value)
        }
        if blueSwitch.isOn {
            blue = CGFloat(blueSlider.value)
        }
        let color = UIColor(red: red,green :green,blue: blue,alpha:1)
        colorView.backgroundColor = color
    }
    
    @IBAction func sliderChanged(_ sender: UISlider) {
       updateColor()
    }
   
    @IBAction func reset(_ sender: UIButton) {
        
        //reset button will set the value of each slider to 1
        // And  isON property of each switch to false
        
       redSwitch.isOn = false
        redSlider.value = 0
        greenSwitch.isOn = false
        greenSlider.value = 0
        blueSwitch.isOn = false
        blueSlider.value = 0
//        updateColcor()
        
    }
    func updateControls() {
        redSlider.isEnabled = redSwitch.isOn
        blueSlider.isEnabled = blueSwitch.isOn
        greenSlider.isEnabled = greenSwitch.isOn
    }
    
    
}
