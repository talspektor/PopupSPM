//
//  ButtonsView.swift
//  TastUI
//
//  Created by Tal talspektor on 23/07/2021.
//

import UIKit

protocol ButtonsViewdelegate: AnyObject {
    var isRightButtonHidden: Bool { get }
    var isLeftButtonHidden: Bool { get }
}

class ButtonsView: NibOwner {

    public weak var  delegate: ButtonsViewdelegate! {
        didSet {
            rightButton.isHidden = delegate.isRightButtonHidden
            leftButton.isHidden = delegate.isLeftButtonHidden
        }
    }
    
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

    @IBAction func didPressRightButton(_ sender: Any) {

    }

    @IBAction func didPressLeftButton(_ sender: Any) {

    }
}
