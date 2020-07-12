//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by João Pedro Giarrante on 12/07/20.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var lblBMI: UILabel!
    @IBOutlet weak var lblText: UILabel!
    var result: Float?
    var advice: String?
    var color: UIColor?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.lblBMI.text = String(format:"%.1f", result!)
        self.lblText.text = advice!
        self.view.backgroundColor = color!
        
    }
    
    @IBAction func clickRecalculate(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    

}
