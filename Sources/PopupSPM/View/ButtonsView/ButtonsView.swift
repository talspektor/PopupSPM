//
//  ButtonsView.swift
//  TastUI
//
//  Created by Tal talspektor on 23/07/2021.
//

import UIKit

class ButtonsView: NibOwner {
    
    @IBOutlet private weak var leftButton: UIButton!
    @IBOutlet private weak var rightButton: UIButton!

    override init() {
        super.init()
        roundCorners()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        roundCorners()
    }

    private func roundCorners() {
        leftButton.clipsToBounds = true
        leftButton.layer.cornerRadius = 5

        rightButton.clipsToBounds = true
        rightButton.layer.cornerRadius = 5
    }

    public func hide() {
        leftButton.isHidden = true
    }

    @IBAction func didPressRightButton(_ sender: Any) {

    }

    @IBAction func didPressLeftButton(_ sender: Any) {

    }
}
