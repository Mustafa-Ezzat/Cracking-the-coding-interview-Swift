//
//  main.swift
//  HackerRank
//
//  Created by Mustafa Ezzat on 1/13/18.
//  Copyright © 2018 Waqood. All rights reserved.
//

import Foundation



let arr = readLine()?.components(separatedBy: " ").map({Int($0)!})
var number = 0
if let n = arr?[0]{
    number = n
}

var degree = 0
var minTimes = 1
var dic = [Int:Int]()

for _ in 0..<number{
    let items = readLine()?.components(separatedBy: " ").map({Int($0)!})
    
    var item = 0
    if let n = items?[0]{
        item = n
    }

    if let value = dic[item]{
        let newValue = value + 1
        dic[item] = newValue
    } else{
        dic[item] = 1
    }
}

for (key, value) in dic{
    if value > degree{
        degree = value
        minTimes = 1
    } else if value == degree{
        minTimes += 1
    }
}

print(minTimes)
