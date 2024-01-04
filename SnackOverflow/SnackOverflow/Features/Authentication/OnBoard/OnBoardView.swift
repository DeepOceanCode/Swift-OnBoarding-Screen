//
//  OnBoardView.swift
//  SnackOverflow
//
//  Created by Yunus Emre Berdibek on 3.01.2024.
//

import SwiftUI

struct OnBoardView: View {
    @AppStorage("isOnBoarding") private var isOnBoarding = true
    @State private var selection: Int = 0

    var body: some View {
        GeometryReader(content: { geometry in
            let width = geometry.dynamicWidth(multiplier: 0.92)
            VStack(spacing: 0, content: {
                tabView(width: width)
                indicatorRectangles
                getStartedButton
                Spacer()
            })
        })
    }
}

#Preview {
    OnBoardView()
}

extension OnBoardView {
    private var indicatorRectangles: some View {
        HStack(content: {
            ForEach(0 ..< OnBoardTabModel.items.count, id: \.self) { index in
                indicatorRectangle(width: index == selection ?
                    20 : 6
                )
            }
        })
        .padding(.top, 12)
    }

    private var getStartedButton: some View {
        AuthButtonView {
            isOnBoarding = false
        } content: {
            Text("Başla")
                .foregroundStyle(.white)
                .font(.system(.headline, weight: .semibold))
                .frame(maxWidth: .infinity, alignment: .center)
                .authButton()
        }
        .padding(.all, 16)
    }
}

extension OnBoardView {
    private func tabView(width: CGFloat) -> some View {
        TabView(selection: $selection, content: {
            ForEach(OnBoardTabModel.items) { item in
                sliderCardView(item: item,
                               width: width)
                    .tag(item.tag)
            }
        })
        .tabViewStyle(.page)
    }

    private func sliderCardView(item: OnBoardTabModel,
                                width: CGFloat) -> some View
    {
        VStack(content: {
            Image(item.image)
                .resizable()
                .aspectRatio(contentMode: .fit)

            Text(item.title)
                .font(.system(.largeTitle, weight: .bold))
                .foregroundColor(Color.theme.peach)
                .multilineTextAlignment(.center)
                .frame(width: width, alignment: .center)
        })
    }

    private func indicatorRectangle(width: CGFloat) -> some View {
        RoundedRectangle(cornerRadius: 40)
            .fill(Color.theme.dustyLavender)
            .frame(width: width, height: 6)
    }
}
