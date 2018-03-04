//
//  GPACalculator.swift
//  GPA Calculator
//
//  Created by wei_lin_chang on 04/03/2018.
//  Copyright © 2018 National Taiwan University. All rights reserved.
//

import Foundation

class GPACalculator {
    
    struct Subject {
        var rank = "F"
        var grade = Double(0)
        var credit = 0
        
        init (rank: String, grade: Double, credit: Int) {
            self.rank = rank
            self.grade = grade
            self.credit = credit
        }
    }
    
    var subjects = [Subject]()
    var gpa: Double {
        return calculateGpa()
    }
    
    func calculateGpa() -> Double {
        if subjects.isEmpty {
            return 0
        }
        else {
            var totalScore = Double(0)
            var totalCredit = 0
            for currentSubject in subjects {
                totalScore += (currentSubject.grade * Double(currentSubject.credit))
                totalCredit += currentSubject.credit
            }
            return totalScore / Double(totalCredit)
        }
    }
}
