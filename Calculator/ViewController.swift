//
//  ViewController.swift
//  Calculator
//
//  Created by Николай Лахов on 19.12.2020.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var result: UILabel!
    var firstNumber:Double = 0
    var operationSign:Int = 0
    var mathematicSign: Bool = false
    var numberFromScreen:Double = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func Click(_ sender: UIButton) {
        if mathematicSign == true {
            result.text = sender.titleLabel?.text
            mathematicSign = false
        } else {
   
        if result.text == "0" {
            result.text = sender.titleLabel?.text
        } else {
            result.text = result.text! + (sender.titleLabel?.text)!
            
    }
            numberFromScreen = Double( result.text!)!
    }
        
    }
    
    
    @IBAction func matemActionDivision(_ sender: UIButton) {
      //if result.text != "" {
            firstNumber = Double (result.text!)!
            mathematicSign = true
            operationSign = sender.tag
            
        //}
        
        print(sender.tag)
        print(firstNumber)
        print(numberFromScreen)
            
        if sender.tag == 1 {
            if operationSign == 2 {
            result.text = String( firstNumber / numberFromScreen)
            }
         
            else if operationSign == 3 {
            result.text = String( firstNumber / numberFromScreen)
            }
            else if operationSign == 4 {
            result.text = String( firstNumber / numberFromScreen)
            }
            else if operationSign == 5 {
            result.text = String( firstNumber / numberFromScreen)
        }
           
        }
            
    }
    

    @IBAction func zero(_ sender: UIButton) {
        result.text = "0"
        firstNumber = 0
        numberFromScreen = 0
        operationSign = 0
    }
    
    var plus: String = "+"
    var minus: String = "-"
    var value:Bool = false
      
    @IBAction func plusMinus(_ sender: UIButton) {
        numberFromScreen = Double(result.text!)!
        if value == true && numberFromScreen > 0 {
            result.text = minus + result.text!
            value = false
        }
        if value == true && numberFromScreen < 0 {
            result.text = String( numberFromScreen + -2 * numberFromScreen
            )
            value = false }
        value = true
        
    }
    }
    

    


