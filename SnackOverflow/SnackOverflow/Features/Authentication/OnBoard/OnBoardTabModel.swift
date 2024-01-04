//
//  OnBoardTabModel.swift
//  SnackOverflow
//
//  Created by Yunus Emre Berdibek on 3.01.2024.
//

import Foundation
import SwiftUI

struct OnBoardTabModel: Identifiable {
    let id: String = UUID().uuidString
    let tag: Int
    let image: String
    let title: String

    static let items: [OnBoardTabModel] = [
        .init(tag: 0,
              image: "onboardingIllustrationVariant1",
              title: "El yapımı yüksek kaliteli atıştırmalıklar."),

        .init(tag: 1,
              image: "onboardingIllustrationVariant2",
              title: "Küresel alışveriş yapın. Akıl almaz derecede uygun fiyatlıdır."),
        .init(tag: 2,
              image: "onboardingIllustrationVariant3",
              title: "Alışverişinizi zamanında teslim alın.")
    ]
}
