// The Swift Programming Language
// https://docs.swift.org/swift-book

import UIKit

public class TestingLib: UIView {
    override func awakeFromNib() {
        super.awakeFromNib()
        backgroundColor = .cyan
        layer.cornerRadius = 20
    }
}
