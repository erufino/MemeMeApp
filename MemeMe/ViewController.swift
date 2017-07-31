//
//  ViewController.swift
//  MemeMe
//
//  Created by Ezra Rufino on 7/31/17.
//  Copyright © 2017 Ezra Rufino. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var count = 0
    var label:UILabel!
    var label2:UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Creating a label
        let label = UILabel()
        label.frame = CGRect(x: 150, y: 150, width: 60, height: 60)
        label.text = "0"
        self.view.addSubview(label)
        self.label = label
        
        // Creating a 2nd label
        let label2 = UILabel()
        label.frame = CGRect(x: 150, y: 90, width: 60, height: 60)
        label.text = "0"
        self.view.addSubview(label2)
        self.label2 = label2

         //Creating an increment button
        let button = UIButton()
        button.frame = CGRect(x: 150, y:250, width: 60, height:60)
        button.setTitle ("Click", for: [])
        button.setTitleColor(UIColor.blue, for: [])
        self.view.addSubview(button)
        
        button.addTarget(self, action: #selector(ViewController.incrementCount), for: UIControlEvents.touchUpInside)
        
        // Creating a decrement button
        let deButton = UIButton()
        deButton.frame = CGRect(x: 150, y:310, width: 150, height:60)
        deButton.setTitle("Click to decrement", for: [])
        deButton.setTitleColor(UIColor.green, for: [])
        self.view.addSubview(deButton)
        
        deButton.addTarget(self, action: #selector(ViewController.decrementCount), for:UIControlEvents.touchUpInside)
        
        // Creating a button that changes the backgroun color
        let colorChanger = UIButton()
        colorChanger.frame = CGRect(x: 150, y:40, width: 150, height:60)
        colorChanger.setTitle("Color Change", for: [])
        colorChanger.setTitleColor(UIColor.red, for: [])
        self.view.addSubview(colorChanger)
        self.view.backgroundColor = UIColor.white

        colorChanger.addTarget(self, action: #selector(ViewController.changeColor), for:UIControlEvents.touchUpInside)
        
    }

    func incrementCount() {
        self.count += 1
        self.label.text  = "\(self.count)"
        self.label2.text = "\(self.count)"
    }
    
    func decrementCount() {
        self.count -= 1
        self.label.text  = "\(self.count)"
        self.label2.text = "\(self.count)"
    }
    
    func changeColor() {
        if self.view.backgroundColor == UIColor.white {
        self.view.backgroundColor = UIColor.black
        }
            
        else {
        self.view.backgroundColor = UIColor.white
        }
    }
    

}
