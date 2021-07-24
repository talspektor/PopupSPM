//
//  PopupView.swift
//  TastUI
//
//  Created by Tal talspektor on 23/07/2021.
//

import UIKit

public protocol PopupViewDelegate: AnyObject {
    var isRightButtonHidden: Bool { get }
    var isLeftButtonHidden: Bool { get }
}

public class PopupView: NibOwner {

    public weak var delegate: PopupViewDelegate!

    @IBOutlet weak var buttonsView: ButtonsView!

    convenience public init(delegate: PopupViewDelegate) {
        self.init()
        self.delegate = delegate
        buttonsView.delegate = self
    }
    
    override init() {
        super.init()
    }

    required init?(coder: NSCoder) {
        fatalError()
    }
}

extension PopupView: ButtonsViewdelegate {
    var isRightButtonHidden: Bool {
        delegate.isRightButtonHidden
    }

    var isLeftButtonHidden: Bool {
        delegate.isLeftButtonHidden
    }
}
