//
//  GPACalculatorViewController.swift
//  GPA Calculator
//
//  Created by wei_lin_chang on 04/03/2018.
//  Copyright © 2018 National Taiwan University. All rights reserved.
//

import UIKit

class GPACalculatorViewController: UIViewController {
    
    @IBOutlet var subjectCells: [SubjectCellView]! {
        didSet {
            subjectCells.forEach { $0.layer.cornerRadius = Constants.cellCornerRadius }
        }
    }
    
    @IBOutlet var rankButtons: [UIButton]!
    @IBOutlet var creditButtons: [UIButton]!
    @IBOutlet weak var topLabel: UILabel!
    
    @IBAction func touchRankButton(_ sender: UIButton) {
        
    }
    
    @IBAction func touchCreditButton(_ sender: UIButton) {
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    struct Constants {
        static let cellCornerRadius = CGFloat(10)
    }
}
