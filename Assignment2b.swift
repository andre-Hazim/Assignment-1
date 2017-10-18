//
//  Created by Patrick Coxall on 2016-10-05.
//  This program shows basic UIKit elements working in an iPad Playground
//  Code calculates area and perimeter of a rectangle
//
// Modified on Oct 2017
// Modified by Andre Hazim
// Created for ICS3U
// Calcluates the height if the object from the seconds it was dropped

import UIKit

// comment out line below and one at bottom, to make code work in Xcode
import PlaygroundSupport

class ViewController : UIViewController {
    // this is the main view controller, that will show the UIKit elements
    
    // properties
    var instructionLabel : UILabel!
    var timeLabel : UILabel!
    var timeTextField : UITextField!
    var calculateButton : UIButton!
    var answerLabel : UILabel!
    
    
    override func viewDidLoad() {
        // create the UIView
        
        let view = UIView()
        view.backgroundColor = UIColor.init(cgColor: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0))
        self.view = view
        
        // create all the UIElements
        instructionLabel = UILabel(frame: CGRect(x: 100, y: 100, width: 500, height: 50))
        instructionLabel.text = "Enter in the number of seconds"
        view.addSubview(instructionLabel)
        
        
        timeLabel = UILabel(frame: CGRect(x: 100, y: 200, width: 500, height: 50))
        timeLabel.text = " Enter time in seconds"
        view.addSubview(timeLabel)
        
        
        
        timeTextField = UITextField(frame: CGRect(x: 300, y: 200, width: 200, height: 50))
        timeTextField.borderStyle = UITextBorderStyle.roundedRect
        timeTextField.placeholder = " seconds"
        view.addSubview(timeTextField)
        
        calculateButton = UIButton(frame: CGRect(x: 100, y: 400, width: 100, height: 50))
        calculateButton.setTitle("Calculate", for: UIControlState.normal)
        calculateButton.setTitleColor(UIColor.init(cgColor: #colorLiteral(red: 0.925490200519562, green: 0.235294118523598, blue: 0.10196078568697, alpha: 1.0)), for: UIControlState.normal)
        calculateButton.addTarget(self, action: #selector(calculateHeight), for: UIControlEvents.touchUpInside)
        view.addSubview(calculateButton)
        
        answerLabel = UILabel(frame: CGRect(x: 100, y: 500, width: 500, height: 50))
        answerLabel.text = nil
        view.addSubview(answerLabel)
        
        
        
    }
    
    @objc func calculateHeight() {
        // height above the ground
        let GRAVITY : Float = 9.81
        let HALF : Float = 0.5
        let seconds :  Float = Float(timeTextField.text!)!
        
        var height = 100 - HALF * GRAVITY * seconds * seconds
        
        // if statement is if the number is passed 0 then set it to zero
        if height <= 0 {
            height = 0
        }
        
        
        answerLabel.text = " The height is \(height)m"
        
    }
    
    // this is for when code is moved to Xcode, the Status bar will be removed
    override var prefersStatusBarHidden: Bool {
        return true
    }
}

// need to also comment this out to make work in Xcode
PlaygroundPage.current.liveView = ViewController()



