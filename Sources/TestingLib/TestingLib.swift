// The Swift Programming Language
// https://docs.swift.org/swift-book

import UIKit

public class ColorChangingView: UIView {
    private var tapGestureRecognizer: UITapGestureRecognizer!
    private var colorToChangeTo: UIColor?

    public override init(frame: CGRect) {
        super.init(frame: frame)
        initialize()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        initialize()
    }

    private func initialize() {
        tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(handleTap(_:)))
        addGestureRecognizer(tapGestureRecognizer)
        isUserInteractionEnabled = true
    }

    public func setColorOnTap(to color: UIColor = .red) {
        colorToChangeTo = color
    }

    @objc private func handleTap(_ sender: UITapGestureRecognizer) {
        if let color = colorToChangeTo {
            self.backgroundColor = color
        }
    }
}
