//
//  SujectCollectionViewCell.swift
//  GPA Calculator
//
//  Created by wei_lin_chang on 05/03/2018.
//  Copyright © 2018 National Taiwan University. All rights reserved.
//

import UIKit

class SujectCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var rankButton: UIButton! {
        didSet {
            rankButton.setTitle("rank", for: .normal)
        }
    }
    @IBOutlet weak var creditButton: UIButton! {
        didSet {
            creditButton.setTitle("credit", for: .normal)
        }
    }
    @IBAction func touchRankButton(_ sender: UIButton) {
        
    }
    
    @IBAction func touchCreditButton(_ sender: UIButton) {
        
    }
}
