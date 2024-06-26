//
//  ViewController.swift
//  Week_2
//
//  Created by 김상준 on 6/25/24.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var checkBox_1: UIButton!
    @IBOutlet weak var checkBox_2: UIButton!
    @IBOutlet weak var checkBox_3: UIButton!
    
    
    @IBOutlet weak var checkBox1: UIButton!
    @IBOutlet weak var checkBox2: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    @IBAction func checkCircleBtn1(_ sender: UIButton) {
        
        if sender.currentImage == UIImage(named: "checkCircle") {
                sender.setImage(UIImage(named: "circle"), for: .normal)
            } else {sender.setImage(UIImage(named: "checkCircle"), for: .normal)
            }
    }
    
    @IBAction func checkCircleBtn2(_ sender: UIButton) {
        
        if sender.currentImage == UIImage(named: "checkCircle") {
                sender.setImage(UIImage(named: "circle"), for: .normal)
            } else {sender.setImage(UIImage(named: "checkCircle"), for: .normal)
            }
    }
    @IBAction func checkCircleBtn3(_ sender: UIButton) {
        
        if sender.currentImage == UIImage(named: "checkCircle") {
                sender.setImage(UIImage(named: "circle"), for: .normal)
            } else {sender.setImage(UIImage(named: "checkCircle"), for: .normal)
            }
    }
    
    
    
    @IBAction func checkBoxBtn1(_ sender: UIButton) {
        
        
        if sender.currentImage == UIImage(systemName: "checkmark.square.fill") {
                sender.setImage(UIImage(systemName: "square"), for: .normal)
            } else {
                sender.setImage(UIImage(systemName: "checkmark.square.fill"), for: .normal)
            }
    }
    
    @IBAction func checkBoxBtn2(_ sender: UIButton) {
        
        if sender.currentImage == UIImage(systemName: "checkmark.square.fill") {
                sender.setImage(UIImage(systemName: "square"), for: .normal)
            } else {
                sender.setImage(UIImage(systemName: "checkmark.square.fill"), for: .normal)
            }
    }
}

