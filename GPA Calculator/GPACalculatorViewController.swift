//
//  GPACalculatorViewController.swift
//  GPA Calculator
//
//  Created by wei_lin_chang on 04/03/2018.
//  Copyright © 2018 National Taiwan University. All rights reserved.
//

import UIKit

class GPACalculatorViewController: UIViewController, UIScrollViewDelegate {
    
    // MARK: IB stuff
    @IBOutlet weak var topLabel: UILabel!
    @IBOutlet var subjectCells: [SubjectCellView]!
    @IBOutlet weak var subjectsScrollView: UIScrollView! {
        didSet {
            subjectsScrollView.delegate = self
            let contentSize = CGSize(width: subjectsScrollView.bounds.width, height: subjectsScrollView.bounds.height * Constants.contentSizeMultiplier)
            subjectsScrollView.contentSize = contentSize
        }
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

    // MARK: - Constants
    struct Constants {
        static let contentSizeMultiplier = CGFloat(6)
    }
}
