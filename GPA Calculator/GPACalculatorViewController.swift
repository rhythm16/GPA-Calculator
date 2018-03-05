//
//  GPACalculatorViewController.swift
//  GPA Calculator
//
//  Created by wei_lin_chang on 04/03/2018.
//  Copyright © 2018 National Taiwan University. All rights reserved.
//

import UIKit

class GPACalculatorViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    // MARK: - IB stuff
    @IBOutlet weak var topLabel: UILabel!
    @IBOutlet weak var subjectsCollectionView: UICollectionView! {
        didSet {
            subjectsCollectionView.dataSource = self
            subjectsCollectionView.delegate = self
        }
    }
    @IBOutlet weak var bottomLabel: UILabel!
    
    // MARK: - model
    var myCalculator = GPACalculator()
    
    // MARK: - collectionViewDataSource/Delegate funcs
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 2
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        switch section {
        case 0: return 1
        case 1: return myCalculator.subjects.count
        default: return 0
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        <#code#>
    }
    
    
    // MARK: - VC lifecycle
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

}
