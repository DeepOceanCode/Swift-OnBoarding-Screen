//
//  View+Extension.swift
//  SnackOverflow
//
//  Created by Yunus Emre Berdibek on 3.01.2024.
//

import SwiftUI

extension View {
    func authButton(background: Color = Color.theme.peach) -> some View {
        self
            .modifier(AuthButtonModifier(background: background))
    }
}
