//
//  HybridVariableBlur.swift
//  Pods
//
//  Created by Joel Arvidsson on 11/16/2025.
//

import Foundation
import UIKit

class HybridVariableBlur : HybridVariableBlurSpec {
    var view: UIView = VariableBlurUIView()
    private var blurView: VariableBlurUIView { return view as! VariableBlurUIView }
    
    var blurRadius: Double? {
        didSet {
            if let blurRadius {
                self.blurView.maxBlurRadius = blurRadius
            }
        }
    }

    var direction: Direction? {
        didSet {
            if let direction {
                self.blurView.direction = direction
            }
        }
    }
}
