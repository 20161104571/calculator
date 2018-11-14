//
//  ViewController.swift
//  calculator
//
//  Created by 20161104571 on 2018/10/17.
//  Copyright © 2018年 20161104571. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var re = 0
    var judge = 0
    var add = 0
    var symbol = 0
    

    
    @IBOutlet weak var result: UITextField!
    @IBOutlet weak var display: UILabel!
    @IBAction func num_0(_ sender: Any) {
        if re == 1{
            
            result.text = "0"
            
        }else{
            
            result.text = result.text! + "0"
            
        }
    }
    @IBAction func num_1(_ sender: Any) {
        if re == 1{
            
            result.text = "1"
            
        }else{
            
            result.text = result.text! + "1"
            
        }
    }
    @IBAction func num_2(_ sender: Any) {
        if re == 1{
            
            result.text = "2"
            
        }else{
            
            result.text = result.text! + "2"
            
        }
    }
    @IBAction func num_3(_ sender: Any) {
        if re == 1{
            
            result.text = "3"
            
        }else{
            
            result.text = result.text! + "3"
            
        }
    }
    @IBAction func num_4(_ sender: Any) {
        if re == 1{
            
            result.text = "4"
            
        }else{
            
            result.text = result.text! + "4"
            
        }
    }
    @IBAction func num_5(_ sender: Any) {
        if re == 1{
            
            result.text = "5"
            
        }else{
            
            result.text = result.text! + "5"
            
        }
    }
    @IBAction func num_6(_ sender: Any) {
        if re == 1{
            
            result.text = "6"
            
        }else{
            
            result.text = result.text! + "6"
            
        }
    }
    @IBAction func num_7(_ sender: Any) {
        if re == 1{
            
            result.text = "7"
            
        }else{
            
            result.text = result.text! + "7"
            
        }
    }
    @IBAction func num_8(_ sender: Any) {
        if re == 1{
            
            result.text = "8"
            
        }else{
            
            result.text = result.text! + "8"
            
        }
    }
    @IBAction func num_9(_ sender: Any) {
        if re == 1{
            
            result.text = "9"
            
        }else{
            
            result.text = result.text! + "9"
            
        }
    }
    @IBAction func dot(_ sender: Any) {
        if judge == 0 {
            result.text = result.text! + "."
        }else if result.text!.contains(".") {
            result.text = result.text! + "."
        }
        judge = 1
    }
    @IBAction func clear(_ sender: Any) {
        result.text = "0"
        display.text = "0"
        re = 0
        judge = 0
    }
    @IBAction func change(_ sender: Any) {
        let count = Double(result.text!)!
        
        let count2 = -count
        
        result.text = String(count2)
        
        re = 0
    }
    @IBAction func percent(_ sender: Any) {
        let count = Double(result.text!)!
        
        let count2 = count * 0.01
        
        result.text = String(count2)
        
        re = 0
    }
    @IBAction func back(_ sender: Any) {
        result.text?.removeLast()
    }
    @IBAction func add(_ sender: Any) {
        if symbol != 0 {
            equal(symbol)
        }
        if(add == 1)
        {
            let a = Double(display.text!)!
            let b = Double(display.text!)!
            let c = a + b
            display.text = String(c)
            result.text = ""
            symbol = 1
            re = 1
        }
        else
        {
            if(result.text == "")
            {
                result.text = "0"
            }
            else
            {
                let x = Double(result.text!)!
                display.text = String(x)
                result.text = ""
                symbol = 1
                re = 0
            }
        }
        judge = 0
    }
    @IBAction func less(_ sender: Any) {
        if symbol != 0 {
            equal(symbol)
        }
        if(add == 1)
        {
            let a = Double(display.text!)!
            let b = Double(display.text!)!
            let c = a - b
            display.text = String(c)
            result.text = ""
            symbol = 2
            re = 1
        }
        else
        {
            if(result.text == "")
            {
                result.text = "0"
            }
            else
            {
                let x = Double(result.text!)!
                display.text = String(x)
                result.text = ""
                symbol = 2
                re = 0
            }
        }
        judge = 0
    }
    @IBAction func multiply(_ sender: Any) {
        if symbol != 0 {
            equal(symbol)
        }
        if(add == 1)
        {
            let a = Double(display.text!)!
            let b = Double(display.text!)!
            let c = a * b
            display.text = String(c)
            result.text = ""
            symbol = 3
            re = 1
        }
        else
        {
            if(result.text == "")
            {
                result.text = "0"
            }
            else
            {
                let x = Double(result.text!)!
                display.text = String(x)
                result.text = ""
                symbol = 3
                re = 0
                add = 1
            }
        }
        judge = 0
    }
    @IBAction func divide(_ sender: Any) {
        if symbol != 0 {
            equal(symbol)
        }
        if(add == 1)
        {
            let a = Double(display.text!)!
            let b = Double(display.text!)!
            let c = a / b
            display.text = String(c)
            result.text = ""
            symbol = 4
            re = 1
        }
        else
        {
            if(result.text == "")
            {
                result.text = "0"
            }
            else
            {
                let x = Double(result.text!)!
                display.text = String(x)
                result.text = ""
                symbol = 4
                re = 0
                add = 1
            }
        }
        judge = 0
    }
    @IBAction func equal(_ sender: Any) {
        var d:Double
        var c:Double
        let x = Double(display.text!)!
        c = (result.text! as NSString).doubleValue
        if symbol == 1 {
            d = x + c
        }else if symbol == 2 {
            d = x - c
        }else if symbol == 3 {
            d = x * c
        }else if symbol == 4 {
            d = x / (c)
        }else {
            d = 0
        }
        display.text = String(c)
        if judge == 1{
            result.text = String(format:"%f", d)
        }else {
            result.text = String(format:"%.5f", d)
        }
        if c == 0 && symbol == 4 {
            result.text = "不能除以0"
        }
        while (result.text?.last == "0"){
            result.text?.removeLast()
        }
        if (result.text?.last == "."){
            result.text?.removeLast()
        }
        
        re = 1
        judge = 0
        add = 0
    }
    override func viewDidLoad() {
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

