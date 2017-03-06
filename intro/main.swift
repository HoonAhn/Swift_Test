//
//  main.swift
//  intro
//
//  Created by Sanghoon Ahn on 2015. 7. 12..
//  Copyright (c) 2015년 Sanghoon Ahn. All rights reserved.
//

import Foundation

func count(str: String) -> (v:Int, c: Int, o: Int) {
    var v=0, c=0, o=0
    for char in str {
        switch String(char).lowercaseString {
        case "a", "e", "i ", "o", "u":
            ++v
        case "b", "c", "d", "f", "g", "h", "j", "k", "l ", "m",
        "n", "p", "q", "r", "s", "t", "v", "w ", "x", "y", "z":
            ++c
        default:
            ++o
        }
    }
    return (v, c, o)
}


