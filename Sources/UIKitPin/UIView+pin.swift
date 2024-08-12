//
//  UIView+pin.swift
//  UIKitPin
//
//  Created by Максим Кузнецов on 12.08.2024.
//

import UIKit

public extension UIView {
    enum PinSide: Int {
        case top
        case bottom
        case leading
        case trailing
    }
    
    func pin(to superview: UIView, _ sides: [PinSide]) {
        for side in sides {
            switch side {
            case .top:
                pinTop(to: superview)
            case .bottom:
                pinBottom(to: superview)
            case .leading:
                pinLeading(to: superview)
            case .trailing:
                pinTrailing(to: superview)
            }
        }
    }
    
    func pin(to superview: UIView, _ sides: [PinSide: Int]) {
        for side in sides {
            switch side.key {
            case .top:
                pinTop(to: superview, side.value)
            case .bottom:
                pinBottom(to: superview, side.value)
            case .leading:
                pinLeading(to: superview, side.value)
            case .trailing:
                pinTrailing(to: superview, side.value)
            }
        }
    }
    
    func pin(to superview: UIView, _ sides: [PinSide], _ const: Int = 0) {
        for side in sides {
            switch side {
            case .top:
                pinTop(to: superview, const)
            case .bottom:
                pinBottom(to: superview, const)
            case .leading:
                pinLeading(to: superview, const)
            case .trailing:
                pinTrailing(to: superview, const)
            }
        }
    }
    
    func pin(to superview: UIView, _ sides: PinSide...) {
        translatesAutoresizingMaskIntoConstraints = false
        for side in sides {
            switch side {
            case .top:
                pinTop(to: superview)
            case .leading:
                pinLeading(to: superview)
            case .trailing:
                pinTrailing(to: superview)
            case .bottom:
                pinBottom(to: superview)
            }
        }
    }
    
    func pin(to superview: UIView) {
        pinTop(to: superview)
        pinLeading(to: superview)
        pinTrailing(to: superview)
        pinBottom(to: superview)
    }
    
    @discardableResult
    func pinTop(to superview: UIView, _ const: Int = 0) -> NSLayoutConstraint {
        translatesAutoresizingMaskIntoConstraints = false
        let constraint = topAnchor.constraint(
            equalTo: superview.topAnchor,
            constant: CGFloat(const)
        )
        constraint.isActive = true
        
        return constraint
    }
    
    @discardableResult
    func pinTop(to side: NSLayoutYAxisAnchor, _ const: Int = 0) -> NSLayoutConstraint {
        translatesAutoresizingMaskIntoConstraints = false
        let constraint = topAnchor.constraint(
            equalTo: side,
            constant: CGFloat(const)
        )
        constraint.isActive = true
        
        return constraint
    }
    
    @discardableResult
    func pinBottom(to superview: UIView, _ const: Int = 0) -> NSLayoutConstraint {
        translatesAutoresizingMaskIntoConstraints = false
        let constraint = bottomAnchor.constraint(
            equalTo: superview.bottomAnchor,
            constant: CGFloat(const * -1)
        )
        constraint.isActive = true
        
        return constraint
    }
    
    @discardableResult
    func pinBottom(to side: NSLayoutYAxisAnchor, _ const: Int = 0) -> NSLayoutConstraint {
        translatesAutoresizingMaskIntoConstraints = false
        let constraint = bottomAnchor.constraint(
            equalTo: side,
            constant: CGFloat(const * -1)
        )
        constraint.isActive = true
        
        return constraint
    }
    
    @discardableResult
    func pinLeading(to superview: UIView, _ const: Int = 0) -> NSLayoutConstraint {
        translatesAutoresizingMaskIntoConstraints = false
        let constraint = leadingAnchor.constraint(
            equalTo: superview.leadingAnchor,
            constant: CGFloat(const)
        )
        constraint.isActive = true
        
        return constraint
    }
    
    @discardableResult
    func pinLeading(to side: NSLayoutXAxisAnchor, _ const: Int = 0) -> NSLayoutConstraint {
        translatesAutoresizingMaskIntoConstraints = false
        let constraint = leadingAnchor.constraint(
            equalTo: side,
            constant: CGFloat(const)
        )
        constraint.isActive = true
        
        return constraint
    }
    
    @discardableResult
    func pinTrailing(to superview: UIView, _ const: Int = 0) -> NSLayoutConstraint {
        translatesAutoresizingMaskIntoConstraints = false
        let constraint = trailingAnchor.constraint(
            equalTo: superview.trailingAnchor,
            constant: CGFloat(const * -1)
        )
        constraint.isActive = true
        
        return constraint
    }
    
    @discardableResult
    func pinTrailing(to side: NSLayoutXAxisAnchor, _ const: Int = 0) -> NSLayoutConstraint {
        translatesAutoresizingMaskIntoConstraints = false
        let constraint = trailingAnchor.constraint(
            equalTo: side,
            constant: CGFloat(const * -1)
        )
        constraint.isActive = true
        
        return constraint
    }
    
    @discardableResult
    func setHeight(to const: Int) -> NSLayoutConstraint {
        translatesAutoresizingMaskIntoConstraints = false
        let constraint = heightAnchor.constraint(equalToConstant: CGFloat(const))
        constraint.isActive = true
        
        return constraint
    }
    
    @discardableResult
    func setHeight(to const: CGFloat) -> NSLayoutConstraint {
        translatesAutoresizingMaskIntoConstraints = false
        let constraint = heightAnchor.constraint(equalToConstant: CGFloat(const))
        constraint.isActive = true
        
        return constraint
    }
    
    @discardableResult
    func setWidth(to const: Int) -> NSLayoutConstraint {
        translatesAutoresizingMaskIntoConstraints = false
        let constraint = widthAnchor.constraint(equalToConstant: CGFloat(const))
        constraint.isActive = true
        
        return constraint
    }
    
    @discardableResult
    func setWidth(to const: CGFloat) -> NSLayoutConstraint {
        translatesAutoresizingMaskIntoConstraints = false
        let constraint = widthAnchor.constraint(equalToConstant: CGFloat(const))
        constraint.isActive = true
        
        return constraint
    }
    
    @discardableResult
    func pinCenterX(to superview: UIView, _ const: Int = 0) -> NSLayoutConstraint {
        translatesAutoresizingMaskIntoConstraints = false
        let constraint = centerXAnchor.constraint(
            equalTo: superview.centerXAnchor,
            constant: CGFloat(const)
        )
        constraint.isActive = true
        
        return constraint
    }
    
    @discardableResult
    func pinCenterX(to center: NSLayoutXAxisAnchor, _ const: Int = 0) -> NSLayoutConstraint {
        translatesAutoresizingMaskIntoConstraints = false
        let constraint = centerXAnchor.constraint(
            equalTo: center,
            constant: CGFloat(const)
        )
        constraint.isActive = true
        
        return constraint
    }
    
    @discardableResult
    func pinCenterY(to superview: UIView, _ const: Int = 0) -> NSLayoutConstraint {
        translatesAutoresizingMaskIntoConstraints = false
        let constraint = centerYAnchor.constraint(
            equalTo: superview.centerYAnchor,
            constant: CGFloat(const)
        )
        constraint.isActive = true
        
        return constraint
    }
    
    @discardableResult
    func pinCenterY(to center: NSLayoutYAxisAnchor, _ const: Int = 0) -> NSLayoutConstraint {
        translatesAutoresizingMaskIntoConstraints = false
        let constraint = centerYAnchor.constraint(
            equalTo: center,
            constant: CGFloat(const)
        )
        constraint.isActive = true
        
        return constraint
    }
    
    func pinCenter(to superview: UIView) {
        pinCenterX(to: superview)
        pinCenterY(to: superview)
    }
}
