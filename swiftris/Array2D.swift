//
//  Array2D.swift
//  swiftris
//
//  Created by Nicolas Dubus on 2014-12-09.
//  Copyright (c) 2014 WorldDubination. All rights reserved.
//

import Foundation

class Array2D<T> {
    //declare size as constants
    let columns: Int
    let rows: Int
    
    //declare a new array of T components
    var array: Array<T?>
    
    //constructor I assume?
    init (columns: Int, rows: Int) {
        self.columns = columns
        self.rows = rows
        
        array = Array<T?>(count: rows * columns, repeatedValue: nil)
    }
    
    
    subscript(column: Int, row: Int) ->T? {
    get {
        return array[(row * columns) + column]
    }
    set(newValue) {
        array[(row * columns) + column] = newValue
        }
    }
}