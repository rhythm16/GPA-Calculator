//
//  SujectCollectionViewCell.swift
//  GPA Calculator
//
//  Created by wei_lin_chang on 05/03/2018.
//  Copyright © 2018 National Taiwan University. All rights reserved.
//

import UIKit

class SujectCollectionViewCell: UICollectionViewCell {
    
    weak var delegate: SubjectCollectionViewCellDelegate?
    
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
        //delegate?.touchedRankButton()
    }
    
    @IBAction func touchCreditButton(_ sender: UIButton) {
        //delegate?.touchedCreditButton()
    }
}

protocol SubjectCollectionViewCellDelegate: class {
    func touchedRankButton()
    func touchedCreditButton()
}
