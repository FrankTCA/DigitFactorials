//
//  main.swift
//  DigitFactorials
//
//  Created by Frank on 2/12/21.
//

import Foundation

print("This will find the sum of all numbers from 1-10,000,000 which are equal to the factorial of their digits.")

for curr in 1...10000000 {
    var total: Int = 0;
    var i: Int = curr;
    while i > 0 {
        let d = i % 10;
        i /= 10;
        switch d {
        case 1:
            total += 1;
        case 2:
            total += 2;
        case 3:
            total += 6;
        case 4:
            total += 24;
        case 5:
            total += 120;
        case 6:
            total += 720;
        case 7:
            total += 5040;
        case 8:
            total += 40320;
        case 9:
            total += 362880;
        default:
            break;
        }
    }
    if total == curr {
        print(" -> \(curr)");
    }
}

print("Process completed!");
