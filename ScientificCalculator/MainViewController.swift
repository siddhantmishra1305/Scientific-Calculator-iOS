//
//  ViewController.swift
//  ScientificCalculator
//
//  Created by Siddhant Mishra on 25/01/19.
//  Copyright © 2019 Siddhant Mishra. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    var num1: String = ""
    var Sign: Character = "A"
    
    
    @IBOutlet weak var dispTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func btn1(_ sender: Any) {
         num1.append("1")
         dispTextView.text = num1
    }
    
    @IBAction func btn2(_ sender: Any) {
            num1.append("2")
            dispTextView.text = num1
    }
    
    @IBAction func btn3(_ sender: Any) {
            num1.append("3")
            dispTextView.text = num1
    }
    
    @IBAction func btn4(_ sender: Any) {
            num1.append("4")
            dispTextView.text = num1
    }
    
    @IBAction func btn5(_ sender: Any) {
            num1.append("5")
            dispTextView.text = num1
    }
    
    @IBAction func btn6(_ sender: Any) {
            num1.append("6")
            dispTextView.text = num1
    }
    
    @IBAction func btn7(_ sender: Any) {
            num1.append("7")
            dispTextView.text = num1
    }
    
    @IBAction func btn8(_ sender: Any) {
            num1.append("8")
            dispTextView.text = num1
    }
    
    @IBAction func btn9(_ sender: Any) {
            num1.append("9")
            dispTextView.text = num1
    }
    
    @IBAction func btn0(_ sender: Any) {
            num1.append("0")
            dispTextView.text = num1
    }
    
    @IBAction func btnDecimal(_ sender: Any) {
            num1.append(".")
            dispTextView.text = num1
    }
    
    @IBAction func btnAnswer(_ sender: Any) {
        calculate()
    }
    
    @IBAction func btnClearAll(_ sender: Any) {
        num1 = ""
        dispTextView.text = num1
    }
    
    @IBAction func btnClear(_ sender: Any) {
        
    }
    
    @IBAction func btnInteger(_ sender: Any) {
        
    }
    
    @IBAction func btnPercent(_ sender: Any) {
    }
    
    @IBAction func btnPlus(_ sender: Any) {
        calculate()
        Sign = "+"
        num1.append("+")
        dispTextView.text = num1
    }
    
    @IBAction func btnSin(_ sender: Any) {
        let numArray : [Substring] = num1.split(separator: Sign)
        if numArray.count > 0{
            let number1: Double! = Double(numArray[0])
            let answer = sin(number1 * Double.pi / 180)
            dispTextView.text = String(answer)
            num1 = String(answer)
        }
    }
    
    @IBAction func btnLog(_ sender: Any) {
        let numArray : [Substring] = num1.split(separator: Sign)
        if numArray.count > 0{
            let number1: Double! = Double(numArray[0])
            let answer = log(number1)
            dispTextView.text = String(answer)
            num1 = String(answer)
        }
    }
    
    @IBAction func btnTan(_ sender: Any) {
        let numArray : [Substring] = num1.split(separator: Sign)
        if numArray.count > 0{
            let number1: Double! = Double(numArray[0])
            let answer = tan(number1 * Double.pi / 180)
            dispTextView.text = String(answer)
            num1 = String(answer)
        }
    }
    
    @IBAction func btnCos(_ sender: Any) {
        let numArray : [Substring] = num1.split(separator: Sign)
        if numArray.count > 0{
            let number1: Double! = Double(numArray[0])
            let answer = cos(number1 * Double.pi / 180)
            dispTextView.text = String(answer)
            num1 = String(answer)
        }
    }
    
    @IBAction func btnDivide(_ sender: Any) {
        calculate()
        Sign = "/"
        num1.append("/")
        dispTextView.text = num1
    }
    
    @IBAction func btnMultiply(_ sender: Any) {
        calculate()
        Sign = "*"
        num1.append("*")
        dispTextView.text = num1
        
    }
    
    @IBAction func btnSub(_ sender: Any) {
        calculate()
        Sign = "-"
        num1.append("-")
        dispTextView.text = num1
    }
    
    
    
    func calculate(){
        let numArray : [Substring] = num1.split(separator: Sign)
        
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
                num1 = String(number1)
        }
    }
    
}

