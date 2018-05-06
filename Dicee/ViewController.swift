//
//  ViewController.swift
//  Dicee
//
//  Created by Tran Thanh Bang on 5/5/18.
//  Copyright © 2018 Tran Thanh Bang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var diceeImageView1: UIImageView!
    @IBOutlet weak var diceeImageView2: UIImageView!
    
    var randomDicee1Index : Int = 0
    var randomDicee2Index : Int = 1
    let arrayDicees = ["dice1","dice2","dice3","dice4","dice5","dice6"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        updateRandom()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onClickToRollDicee(_ sender: Any) {
        updateRandom()
    }
    
    func updateRandom(){
        let indexDicee1 = Int(arc4random_uniform(5))
        let indexDicee2 = (Int)(arc4random_uniform(5))
        updateDicesImages(value1: indexDicee1, value2: indexDicee2)
    }
    
    func updateDicesImages(value1 :Int ,value2: Int){
        diceeImageView1.image = UIImage(named: arrayDicees[value1]);
        diceeImageView2.image = UIImage(named: arrayDicees[value2]);
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        updateRandom()
    }
}

