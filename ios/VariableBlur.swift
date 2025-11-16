/// Based on https://github.com/jtrivedi/VariableBlurView

import SwiftUI
import UIKit
import CoreImage.CIFilterBuiltins
import QuartzCore

open class VariableBlurUIView: UIVisualEffectView {
    public var maxBlurRadius: CGFloat = 20 {
        didSet { setNeedsUpdateProperties() }
    }

    public var direction: Direction = .down {
        didSet { setNeedsUpdateProperties() }
    }
    
    public init() {
        super.init(effect: UIBlurEffect(style: .regular))

        setNeedsUpdateProperties()

        // Get rid of the visual effect view's dimming/tint view, so we don't see a hard line.
        for subview in subviews.dropFirst() {
            subview.alpha = 0
        }
    }

    required public init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    open override func didMoveToWindow() {
        // fixes visible pixelization at unblurred edge (https://github.com/nikstar/VariableBlur/issues/1)
        guard let window, let backdropLayer = subviews.first?.layer else { return }
        backdropLayer.setValue(window.traitCollection.displayScale, forKey: "scale")
    }
    
    open override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
        // `super.traitCollectionDidChange(previousTraitCollection)` crashes the app
    }
    
    open override func setNeedsUpdateProperties() {
        if #available(iOS 26.0, *) {
            super.setNeedsUpdateProperties()
        } else {
            updateProperties()
        }
    }
    
    open override func updateProperties() {
        if #available(iOS 26.0, *) {
            super.updateProperties()
        }
        let clsName = String("retliFAC".reversed())
        guard let Cls = NSClassFromString(clsName)! as? NSObject.Type else {
            print("[VariableBlur] Error: Can't find filter class")
            return
        }
        let selName = String(":epyThtiWretlif".reversed())
        guard let variableBlur = Cls.self.perform(NSSelectorFromString(selName), with: "variableBlur").takeUnretainedValue() as? NSObject else {
            print("[VariableBlur] Error: Can't create variableBlur filter")
            return
        }

        // The blur radius at each pixel depends on the alpha value of the corresponding pixel in the gradient mask.
        // An alpha of 1 results in the max blur radius, while an alpha of 0 is completely unblurred.
        let gradientImage = makeGradientImage(direction: direction)

        variableBlur.setValue(maxBlurRadius, forKey: "inputRadius")
        variableBlur.setValue(gradientImage, forKey: "inputMaskImage")
        variableBlur.setValue(true, forKey: "inputNormalizeEdges")

        // We use a `UIVisualEffectView` here purely to get access to its `CABackdropLayer`,
        // which is able to apply various, real-time CAFilters onto the views underneath.
        let backdropLayer = subviews.first?.layer

        // Replace the standard filters (i.e. `gaussianBlur`, `colorSaturate`, etc.) with only the variableBlur.
        backdropLayer?.filters = [variableBlur]
    }
    
    private func makeGradientImage(width: CGFloat = 100, height: CGFloat = 100, direction: Direction) -> CGImage {
        let ciGradientFilter =  CIFilter.linearGradient()
        ciGradientFilter.color0 = CIColor.black
        ciGradientFilter.color1 = CIColor.clear
        ciGradientFilter.point0 = CGPoint(x: 0, y: height)
        ciGradientFilter.point1 = CGPoint(x: 0, y: 0)
        if case .up = direction {
            ciGradientFilter.point0.y = 0
            ciGradientFilter.point1.y = height
        }
        return CIContext().createCGImage(ciGradientFilter.outputImage!, from: CGRect(x: 0, y: 0, width: width, height: height))!
    }
}
