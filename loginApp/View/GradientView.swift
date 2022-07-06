//
//  GradientView.swift
//  loginApp
//
//  Created by Клоун on 03.07.2022.
//

import UIKit

class GradientView: UIView {

    @IBInspectable private var startColor: UIColor? {
        didSet {
            setupGradients()
        }
    }
    @IBInspectable private var endColor: UIColor? {
        didSet {
            setupGradients()
        }
    }
    
    private let gradientLayer = CAGradientLayer()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupGradients()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        gradientLayer.frame = bounds
    }
    
    private func setupGradients() {
        self.layer.addSublayer(gradientLayer)
        setupGradientColors()
    }
    
    private func setupGradientColors() {
        guard let startColor = startColor?.cgColor, let endColor = endColor?.cgColor else { return }
        gradientLayer.colors = [startColor, endColor]
    }
}
