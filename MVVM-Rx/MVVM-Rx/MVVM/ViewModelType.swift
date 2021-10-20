//
//  ViewModelType.swift
//  MVVM-Rx
//
//  Created by Rubén Muñoz López on 20/10/21.
//

import Foundation

protocol ViewModelType {
    associatedtype Input
    associatedtype Output
    
    var input: Input { get }
    var output: Output { get }
}
