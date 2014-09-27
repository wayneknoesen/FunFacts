//
//  ViewController.swift
//  Fun Facts
//
//  Created by Wayne Knoesen on 23/09/14.
//  Copyright (c) 2014 LeetApps. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var funFactLable: UILabel!
    @IBOutlet weak var funFactButton: UIButton!
    
    let factBook = FactBook()
    let colorWheel = ColorWheel()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        funFactLable.text = factBook.ramdonFact()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func showFunFact() {
        
        var randomColor = colorWheel.randomColor()
        
        view.backgroundColor = randomColor
        funFactButton.tintColor = randomColor
        funFactLable.text = factBook.ramdonFact()
        
    }



}

