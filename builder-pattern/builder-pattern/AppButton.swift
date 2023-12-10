//
//  AppButton.swift
//  builder-pattern
//
//  Created by Abhishek Kumar Ravi on 10/12/23.
//

import UIKit

class AppButton: UIButton {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setDefaults()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setDefaults()
    }
    
    private func setDefaults() {
        self.titleLabel?.font = UIFont(name: "Avenir", size: 16.0)
    }
    
    static func build(_ fontSize: Double, _ backgroundColor: UIColor, _ title: String, _ cornerRadius: Double? = 0) -> AppButton {
        let button = AppButton()
        return button
    }
    
    @discardableResult
    func setFontSize(_ size: Double) -> AppButton {
        self.titleLabel?.font = UIFont(name: "Avenir", size: size)
        return self
    }
    
    @discardableResult
    func setBackgroundColor(_ color: UIColor) -> AppButton {
        self.backgroundColor = color
        return self
    }
    
    @discardableResult
    func setTitle(_ title: String) -> AppButton {
        self.setTitle(title, for: .normal)
        return self
    }
    
    @discardableResult
    func setCornerRaius(_ radius: Double) -> AppButton {
        self.layer.cornerRadius = radius
        return self
    }
    
}
