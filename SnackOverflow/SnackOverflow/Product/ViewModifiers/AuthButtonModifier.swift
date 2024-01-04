//
//  AuthButtonModifier.swift
//  SnackOverflow
//
//  Created by Yunus Emre Berdibek on 3.01.2024.
//

import Foundation
import SwiftUI

struct AuthButtonModifier: ViewModifier {
    let background: Color
    func body(content: Content) -> some View {
        content
            .padding()
            .buttonBorderShape(.roundedRectangle)
            .controlSize(.large)
            .background(background)
            .cornerRadius(8.0)
    }
}
