//
//  ViewController.swift
//  lab8
//
//  Created by Ануар Беисов on 01.04.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var passText: UITextField!
    @IBOutlet weak var mailText: UITextField!
    @IBOutlet weak var nextButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nextButton.backgroundColor = .clear
        nextButton.layer.cornerRadius = 5
        nextButton.layer.borderWidth = 1
        nextButton.layer.borderColor = UIColor.black.cgColor
        
        mailText.center = CGPoint(x: -10, y: 353)
        UIView.animate(withDuration: 1, animations: {
            self.mailText.center = CGPoint(x: 206, y: 353)
        })
        passText.center = CGPoint(x: 400, y: 430)
        UIView.animate(withDuration: 1, animations: {
            self.passText.center = CGPoint(x: 206, y: 430)
        })
        
        
        
        UIView.animate(withDuration: 3, animations: {
            self.nextButton.alpha = 1
        })
        
        
    }

    @IBAction func tabB(_ sender: UIButton) {
        
        
        UIView.animate(withDuration: 1, animations: {
            self.mailText.center = CGPoint(x: -150, y: 353)
        })
      
        UIView.animate(withDuration: 1, animations: {
            self.passText.center = CGPoint(x: 600, y: 430)
        })
        
        
        UIView.animate(withDuration: 2, animations: {
            self.nextButton.alpha = -1
        })
        
        
        
        
        
    }
    
}

