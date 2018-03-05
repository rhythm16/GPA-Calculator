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
        enum Rank {
            case Aplus
            case A
            case Aminus
            case Bplus
            case B
            case Bminus
            case Cplus
            case C
            case Cminus
            case F
        }
        var rank = Rank.F
        var grade: Double {
            switch rank {
            case .Aplus: return 4.3
            case .A: return 4.0
            case .Aminus: return 3.7
            case .Bplus: return 3.3
            case .B: return 3.0
            case .Bminus: return 2.7
            case .Cplus: return 2.3
            case .C: return 2.0
            case .Cminus: return 1.7
            case .F: return 0.0
            }
        }
        var credit = 0
        
        init (rank: Rank, credit: Int) {
            self.rank = .F
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
