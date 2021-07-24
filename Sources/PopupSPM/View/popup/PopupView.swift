//
//  PopupView.swift
//  TastUI
//
//  Created by Tal talspektor on 23/07/2021.
//

import UIKit

public class PopupView: NibOwner {

    @IBOutlet weak var buttonsView: ButtonsView!
    
    override public init() {
        super.init()
        hideButton()
    }

    required init?(coder: NSCoder) {
        fatalError()
    }

    private func hideButton() {
        buttonsView.hide()
    }

}
extension UIView {

    @discardableResult
    func fromNib<T : UIView>() -> T? {
        guard let contentView = Bundle.module.loadNibNamed(String(describing: type(of: self)), owner: self, options: nil)?.first as? T else {
            return nil
        }
        self.addSubview(contentView)
        contentView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            contentView.topAnchor.constraint(equalTo: topAnchor),
            contentView.bottomAnchor.constraint(equalTo: bottomAnchor),
            contentView.leadingAnchor.constraint(equalTo: leadingAnchor),
            contentView.trailingAnchor.constraint(equalTo: trailingAnchor)
        ])
        return contentView
    }
}
