//
//  NibOwner.swift
//  TastUI
//
//  Created by Tal talspektor on 23/07/2021.
//

import UIKit

public class Nibable: UIView {
    init() {
        super.init(frame: .zero)
        fromNib()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
