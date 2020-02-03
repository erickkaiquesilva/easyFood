//
//  UIView+Ext.swift
//  base-app
//
//  Created by Erick Kaique Da Silva on 31/01/20.
//  Copyright © 2020 Erick Kaique Da Silva. All rights reserved.
//

import UIKit

extension UIView {
    
    func anchor(top: NSLayoutYAxisAnchor?,
                leading: NSLayoutXAxisAnchor?,
                bottom: NSLayoutYAxisAnchor?,
                trailing: NSLayoutXAxisAnchor?, margin: UIEdgeInsets = .zero, size: CGSize = .zero) {
        
        translatesAutoresizingMaskIntoConstraints = false
        
        if let top = top {
            top.constraint(equalTo: topAnchor, constant: -margin.top).isActive = true
        }
        
        if let leading = leading {
            leading.constraint(equalTo: leadingAnchor, constant: margin.left).isActive = true
        }
        
        if let bottom = bottom {
            bottom.constraint(equalTo: bottomAnchor, constant: margin.bottom).isActive = true
        }
        
        if let trailing = trailing {
            trailing.constraint(equalTo: trailingAnchor, constant: margin.right).isActive = true
        }
        
        if size.width != 0 {
            widthAnchor.constraint(equalToConstant: size.width).isActive = true
        }
        
        if size.height != 0 {
            heightAnchor.constraint(equalToConstant: size.height).isActive = true
        }
    }
    
    func topSuperView(to superView: UIView, margin: CGFloat) {
        translatesAutoresizingMaskIntoConstraints = false
        let guides = superView.safeAreaLayoutGuide
        guides.topAnchor.constraint(equalTo: topAnchor, constant: (margin) * -1).isActive = true
    }
    
    func leadingSuperView(to superView: UIView, margin: CGFloat) {
        translatesAutoresizingMaskIntoConstraints = false
        superView.safeAreaLayoutGuide.leadingAnchor.constraint(equalTo: leadingAnchor, constant: (margin) * -1).isActive = true
    }
    
    func bottomSuperView(to superView: UIView, margin: CGFloat) {
        translatesAutoresizingMaskIntoConstraints = false
        let guides = superView.safeAreaLayoutGuide
        guides.bottomAnchor.constraint(equalTo: bottomAnchor, constant: margin).isActive = true
    }
    
    func trailingSuperView(to superView: UIView, margin: CGFloat) {
        translatesAutoresizingMaskIntoConstraints = false
        superView.safeAreaLayoutGuide.trailingAnchor.constraint(equalTo: trailingAnchor, constant: margin).isActive = true
    }
    
    func topView(to otherView: UIView, margin: CGFloat) {
        translatesAutoresizingMaskIntoConstraints = false
        otherView.topAnchor.constraint(equalTo: topAnchor, constant: (margin) * -1).isActive = true
    }
    
    func leadingView(to otherView: UIView, margin: CGFloat) {
        translatesAutoresizingMaskIntoConstraints = false
        otherView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: (margin) * -1).isActive = true
    }
    
    func bottomView(to otherView: UIView, margin: CGFloat) {
        translatesAutoresizingMaskIntoConstraints = false
        otherView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: margin).isActive = true
    }
    
    func trailingView(to otherView: UIView, margin: CGFloat) {
        translatesAutoresizingMaskIntoConstraints = false
        otherView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: margin).isActive = true
    }
    
    func sizeHeight(height: CGFloat) {
        heightAnchor.constraint(equalToConstant: height).isActive = true
    }
    
    func sizeWidth(width: CGFloat) {
        widthAnchor.constraint(lessThanOrEqualToConstant: width).isActive = true
    }
}
