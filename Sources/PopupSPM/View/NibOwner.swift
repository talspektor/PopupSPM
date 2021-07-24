//
//  NibOwner.swift
//  TastUI
//
//  Created by Tal talspektor on 23/07/2021.
//

import UIKit

class NibOwner: UIView {

    init() {
        super.init(frame: .zero)
        fromNib()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        fromNib()
    }
}
