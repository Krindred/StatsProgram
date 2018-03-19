//
//  main.swift
//  StatsProgram
//
//  Created by Karin Alsop on 3/19/18.
//  Copyright © 2018 Karin Alsop. All rights reserved.
//

import Foundation

func average(_ numbers: Double...) -> Double {
    var total: Double = 0
    for number in numbers {
        total += number
    }
    return total / Double(numbers.count)
}

func standardDeviation(set : [Double]) -> Double {
    let n = Double(set.count)
    let mean = set.reduce(0, {$0 + $1}) / n
    let sum = set.map{ pow($0 - mean, 2.0)}.reduce(0, {$0 + $1})
    return sqrt(sum / n)
}
