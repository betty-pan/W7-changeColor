//
//  ViewController.swift
//  W7 changeColor
//
//  Created by BettyPan on 2020/12/14.
//  Copyright © 2020 bettypan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
   
    @IBOutlet weak var shadowImageView: UIImageView!
    @IBOutlet weak var dressImageView: UIImageView!
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var alphaSlider: UISlider!
    
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var blueLabel: UILabel!
    @IBOutlet weak var alphaLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func changeColor(_ sender: Any) {
        dressImageView.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: CGFloat(alphaSlider.value))
        redLabel.text = String(format: "%.2f", (redSlider.value))
        greenLabel.text = String(format: "%.2f", (greenSlider.value))
        blueLabel.text = String(format: "%.2f", (blueSlider.value))
        alphaLabel.text = String(format: "%.2f", (alphaSlider.value))
        
    }
    
    @IBAction func randomColor(_ sender: Any) {
        redSlider.value = Float.random(in: 0...1)
        greenSlider.value = Float.random(in: 0...1)
        blueSlider.value = Float.random(in: 0...1)
        alphaSlider.value = Float.random(in: 0...1)
        dressImageView.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: CGFloat(alphaSlider.value))
        redLabel.text = String(format: "%.2f", (redSlider.value))
        greenLabel.text = String(format: "%.2f", (greenSlider.value))
        blueLabel.text = String(format: "%.2f", (blueSlider.value))
        alphaLabel.text = String(format: "%.2f", (alphaSlider.value))
        
    }
    
    
    
    
}

