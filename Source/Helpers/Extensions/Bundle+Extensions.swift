//
//  Bundle+Extensions.swift
//  YPImagePicker
//
//  Created by Nik Kov on 19.09.2021.
//  Copyright © 2021 Yummypets. All rights reserved.
//

import UIKit

extension Bundle {
    static var local: Bundle {
        #if SWIFT_PACKAGE
        return Bundle.module
        #else
        if let bundlePath = Bundle(for: BundleToken.self).path(forResource: "YPBundle", ofType: "bundle"), let bundle = Bundle(path: bundlePath) {
            return bundle
        }
        return Bundle(for: BundleToken.self)
        #endif
    }
}

private class BundleToken {}
