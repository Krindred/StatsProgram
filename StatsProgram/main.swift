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

func addTwoInts(_ a: Int, _ b: Int) -> Int {
    return a + b
}

func multiplyTwoInts(_ a: Int, _ b: Int) -> Int {
    return a * b
}

func standardDeviation(arr : [Double]) -> Double {
    let length = Double(arr.count)
    let avg = arr.reduce(0, {$0 + $1}) / length
    let sumOfSquaredAvgDiff = arr.map { pow($0 - avg, 2.0)}.reduce(0, {$0 + $1})
    return sqrt(sumOfSquaredAvgDiff / length)
}
