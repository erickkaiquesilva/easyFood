//
//  EasyFoodButton.swift
//  base-app
//
//  Created by Erick Kaique Da Silva on 05/02/20.
//  Copyright © 2020 Erick Kaique Da Silva. All rights reserved.
//

import UIKit

public enum EasyFoodButtonType {
    
    case primary
    case secundary
}

public enum EasyFoodButtonStyle {
    
    case small
    case medium
    
    var font: UIFont {
        switch self {
        case .small: return UIFont.normalFonceSansText
        case .medium: return UIFont.normalFonceSansText
        }
    }
    
    var height: Float {
        switch self {
        case .small: return 45
        case .medium: return 55
        }
    }
}

public class EFButton: EFButtonLoadable {
    
    private let style: EasyFoodButtonStyle
    
    // #### DÚVIDA
    override open class var layerClass: AnyClass { return CAGradientLayer.self }
    
    public var type: EasyFoodButtonType {
        didSet {
            setupUI()
        }
    }
    
    public init(type: EasyFoodButtonType,
                title: String,
                style: EasyFoodButtonStyle = .medium,
                frame: CGRect = .zero,
                edgeInsets: UIEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)) {
        self.type = type
        self.style = style
        super.init(frame: frame)
        setTitle(title, for: .normal)
        self.contentEdgeInsets = edgeInsets
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupUI() {
        clearPreviousSetup()
        layer.cornerRadius = CGFloat(style.height / 2.0)
        setupTitle()
        addConstraint()
        setupBackground()
    }
    
    private func setupTitle() {
        switch type {
        case .primary:
            setTitleColor(UIColor.backgroundBlack, for: .normal)
        case .secundary:
            setTitleColor(UIColor.backgroundWithe, for: .normal)
        }
    }
    
    private func clearPreviousSetup() {
        backgroundColor = .clear
        layer.borderColor = UIColor.clear.cgColor
        layer.borderWidth = 0
        guard let gradientLayer = layer as? CAGradientLayer else { return }
        gradientLayer.colors = [UIColor.clear.cgColor]
    }
    
    private func setupBackground() {
        guard let gradientLayer = layer as? CAGradientLayer else { return }
        gradientLayer.colors = []
        
        switch type {
        case .primary:
            gradientLayer.colors = [UIColor.backgroundWithe.cgColor]
        case .secundary:
            backgroundColor = .clear
            layer.borderColor = UIColor.backgroundBlack.cgColor
            layer.borderWidth = 1
        }
    }
    
    private func addConstraint() {
        con.applyConstraint { view in
            view.height(style.height)
        }
    }
    
    public func setButtonTitle(title: String) {
        setTitle(title, for: .normal)
    }
    
    public func setButtonType(type: EasyFoodButtonType = .primary) {
        self.type = type
        self.setupUI()
    }
}
