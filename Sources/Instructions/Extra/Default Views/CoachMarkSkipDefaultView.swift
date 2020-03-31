// Copyright (c) 2015-present Frédéric Maquin <fred@ephread.com> and contributors.
// Licensed under the terms of the MIT License.

import UIKit

/// A concrete implementation of the coach mark skip view and the
/// default one provided by the library.
public class CoachMarkSkipDefaultView: UIButton, CoachMarkSkipView {
    // MARK: - Public properties
    public var skipControl: UIControl? {
        return self
    }

    // MARK: - Private properties
    public override init(frame: CGRect) {
        super.init(frame: frame)
        accessibilityIdentifier = AccessibilityIdentifiers.skipButton
    }

    public convenience init() {
        self.init(frame: CGRect.zero)

        setTitleColor(UIColor.black, for: .normal)
        titleLabel?.font = UIFont.systemFont(ofSize: 17.0)
        titleLabel?.textAlignment = .center

        setBackgroundImage(UIImage(namedInInstructions: "background"), for: .normal)

        setBackgroundImage(UIImage(namedInInstructions: "background-highlighted"),
                           for: .highlighted)

        layer.cornerRadius = 4
        contentEdgeInsets = UIEdgeInsets(top: 10.0, left: 15.0, bottom: 10.0, right: 15.0)
        sizeToFit()
    }

    required public init?(coder aDecoder: NSCoder) {
        fatalError("This class does not support NSCoding.")
    }
}
