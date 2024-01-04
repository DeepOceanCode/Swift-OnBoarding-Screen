//
//  GeometryProxy+Extensions.swift
//  SnackOverflow
//
//  Created by Yunus Emre Berdibek on 3.01.2024.
//

import Foundation
import SwiftUI

extension GeometryProxy {
    func dynamicWidth(multiplier: CGFloat) -> CGFloat {
        size.width * multiplier
    }

    func dynamicHeight(multiplier: CGFloat) -> CGFloat {
        size.height * multiplier
    }
}
