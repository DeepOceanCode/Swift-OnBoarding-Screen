//
//  AuthNormalButton.swift
//  SnackOverflow
//
//  Created by Yunus Emre Berdibek on 3.01.2024.
//

import SwiftUI

struct AuthButtonView<Content: View>: View {
    var action: () -> Void
    var content: Content

    init(action: @escaping () -> Void, @ViewBuilder content: () -> Content) {
        self.action = action
        self.content = content()
    }

    var body: some View {
        Button(action: {
            action()
        }, label: {
            content
        })
    }
}

#Preview {
    AuthButtonView {} content: {
        HStack {
            Spacer()
            Text("Get started")
                .foregroundStyle(.white)
            Spacer()
        }
        .authButton(background: .red)
        .padding()
    }
}
