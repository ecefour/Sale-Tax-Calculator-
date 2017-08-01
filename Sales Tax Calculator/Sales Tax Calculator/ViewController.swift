//
//  ViewController.swift
//  Sales Tax Calculator
//
//  Created by Sam Errett on 7/13/17.
//  Copyright © 2017 Sam Errett. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var Item: UITextField!

    @IBOutlet weak var Tax: UITextField!

    @IBOutlet weak var Answer: UITextField!
    
    @IBOutlet weak var Sale: UITextField!
    
    @IBOutlet weak var Total: UITextField!
    
    @IBOutlet weak var Sale2: UITextField!
    
    @IBAction func Calculate(_ sender: Any) {
        guard let a = Double(Item.text ?? "0") else { return }
        guard let conversionRate = Double(Tax.text ?? "0") else { return }
        guard let Rate = Double(Sale.text ?? "0") else { return }
        var y = a * Rate
        var b = a * conversionRate
        var c = a + b - y
        //let d = y + c
        b = (b * 100).rounded() / 100
        c = (c * 100).rounded() / 100
        y = (y * 100).rounded() / 100
        Sale2.text = ("Sale: $\(y)")
        Answer.text = ("Tax: $\(b)")
        Total.text = ("Total: $\(c)")
    }

    @IBAction func About(_ sender: Any) {
        let alert = UIAlertController(title: "About", message: "Created On 7/13/2017, By: Sam Errett", preferredStyle:UIAlertControllerStyle.alert)
        alert.addAction(UIAlertAction(title: "Got It", style: UIAlertActionStyle.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

