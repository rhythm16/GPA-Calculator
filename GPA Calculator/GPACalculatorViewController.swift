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
    @IBAction func touchPlus(_ sender: UIButton) {
        myCalculator.subjects.append(GPACalculator.Subject(rank: .F, credit: 0))
        subjectsCollectionView.reloadData()
    }
    
    @IBOutlet weak var bottomLabel: UILabel! {
        didSet {
            bottomLabel.layer.cornerRadius = Constants.bottomLabelCornerRadius
            bottomLabel.clipsToBounds = true
        }
    }
    
    @IBOutlet var pickerView: UIView!
    
    @IBAction func touchDone(_ sender: UIButton) {
        
    }
    
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
        if indexPath.section == 1 {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "subjectCell", for: indexPath)
            return cell
        }
        else {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "plusCell", for: indexPath)
            return cell
        }
    }
    
    
    // MARK: - VC lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        view.addSubview(pickerView)
        pickerView.translatesAutoresizingMaskIntoConstraints = false
        pickerView.heightAnchor.constraint(equalToConstant: Constants.pickerViewHeight).isActive = true
        pickerView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: Constants.pickerViewLeadingOffset).isActive = true
        pickerView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -Constants.pickerViewLeadingOffset).isActive = true
        let bottomConstraint = pickerView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: Constants.pickerViewHeight)
        bottomConstraint.identifier = "bottomConstraint"
        pickerView.layer.cornerRadius = Constants.pickerViewCornerRadius
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
    
    // MARK: - Constants
    struct Constants {
        static let bottomLabelCornerRadius = CGFloat(20)
        static let pickerViewCornerRadius = CGFloat(10)
        static let pickerViewHeight = CGFloat(128)
        static let pickerViewLeadingOffset = CGFloat(10)
    }

}
