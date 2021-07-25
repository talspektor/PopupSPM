//
//  NibOwner.swift
//  TastUI
//
//  Created by Tal talspektor on 23/07/2021.
//

import UIKit

protocol Nibable {
    
}

extension Nibable where Self: UIView {
    init() {
        self.init()
        fromNib()
    }
}
