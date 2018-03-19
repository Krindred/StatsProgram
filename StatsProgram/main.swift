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


