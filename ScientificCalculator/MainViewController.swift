//
//  ViewController.swift
//  ScientificCalculator
//
//  Created by Siddhant Mishra on 25/01/19.
//  Copyright © 2019 Siddhant Mishra. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    var Num1: String = ""
    var Sign: Character = "A"
    
    
    @IBOutlet weak var dispTextView: UITextView!
    
    @IBAction func Btn1(_ sender: Any) {
         Num1.append("1")
         dispTextView.text = Num1
    }
    
    @IBAction func Btn2(_ sender: Any) {
            Num1.append("2")
            dispTextView.text = Num1
    }
    
    @IBAction func Btn3(_ sender: Any) {
            Num1.append("3")
            dispTextView.text = Num1
    }
    
    @IBAction func Btn4(_ sender: Any) {
            Num1.append("4")
            dispTextView.text = Num1
    }
    
    @IBAction func Btn5(_ sender: Any) {
            Num1.append("5")
            dispTextView.text = Num1
    }
    
    @IBAction func Btn6(_ sender: Any) {
            Num1.append("6")
            dispTextView.text = Num1
    }
    
    @IBAction func Btn7(_ sender: Any) {
            Num1.append("7")
            dispTextView.text = Num1
    }
    
    @IBAction func Btn8(_ sender: Any) {
            Num1.append("8")
            dispTextView.text = Num1
    }
    
    @IBAction func Btn9(_ sender: Any) {
            Num1.append("9")
            dispTextView.text = Num1
    }
    
    @IBAction func Btn0(_ sender: Any) {
            Num1.append("0")
            dispTextView.text = Num1
    }
    
    @IBAction func BtnDecimal(_ sender: Any) {
            Num1.append(".")
            dispTextView.text = Num1
    }
    
    @IBAction func BtnAnswer(_ sender: Any) {
        Calculate()
    }
    
    @IBAction func BtnClearAll(_ sender: Any) {
        Num1 = ""
        dispTextView.text = Num1
    }
    
    @IBAction func BtnClear(_ sender: Any) {
        
    }
    
    @IBAction func BtnInteger(_ sender: Any) {
        
    }
    
    @IBAction func BtnPercent(_ sender: Any) {
    }
    
    @IBAction func BtnPlus(_ sender: Any) {
        Calculate()
        Sign = "+"
        Num1.append("+")
        dispTextView.text = Num1
    }
    
    @IBAction func BtnSin(_ sender: Any) {
        let numArray : [Substring] = Num1.split(separator: Sign)
        if numArray.count > 0{
            let number1: Double! = Double(numArray[0])
            let answer = sin(number1 * Double.pi / 180)
            dispTextView.text = String(answer)
            Num1 = String(answer)
        }
    }
    
    @IBAction func BtnLog(_ sender: Any) {
        let numArray : [Substring] = Num1.split(separator: Sign)
        if numArray.count > 0{
            let number1: Double! = Double(numArray[0])
            let answer = log(number1)
            dispTextView.text = String(answer)
            Num1 = String(answer)
        }
    }
    
    @IBAction func BtnTan(_ sender: Any) {
        let numArray : [Substring] = Num1.split(separator: Sign)
        if numArray.count > 0{
            let number1: Double! = Double(numArray[0])
            let answer = tan(number1 * Double.pi / 180)
            dispTextView.text = String(answer)
            Num1 = String(answer)
        }
    }
    
    @IBAction func BtnCos(_ sender: Any) {
        let numArray : [Substring] = Num1.split(separator: Sign)
        if numArray.count > 0{
            let number1: Double! = Double(numArray[0])
            let answer = cos(number1 * Double.pi / 180)
            dispTextView.text = String(answer)
            Num1 = String(answer)
        }
    }
    
    @IBAction func BtnDivide(_ sender: Any) {
        Calculate()
        Sign = "/"
        Num1.append("/")
        dispTextView.text = Num1
    }
    
    @IBAction func BtnMultiply(_ sender: Any) {
        Calculate()
        Sign = "*"
        Num1.append("*")
        dispTextView.text = Num1
        
    }
    
    @IBAction func BtnSub(_ sender: Any) {
        Calculate()
        Sign = "-"
        Num1.append("-")
        dispTextView.text = Num1
    }
    
    
    
    func Calculate(){
        let numArray : [Substring] = Num1.split(separator: Sign)
        
        if numArray.count >= 2 && numArray[1].count > 0 {
            var number1: Double! = Double(numArray[0])
            var number2: Double! = Double(numArray[1])
      
            switch  Sign {
            case "+":
                number1 = number1 + number2
                break
            case "-":
                number1 = number1 - number2
                break
            case "*":
                number1 = number1 * number2
                break
            case "/":
                number1 = number1 / number2
                break
            
            default:
                number1 = number1 + number2
            }
                dispTextView.text = String(number1)
                Num1 = String(number1)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }


}

