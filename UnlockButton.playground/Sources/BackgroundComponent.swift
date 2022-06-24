//
// 21/06/2022
//
// Created by: Valerie Abelovska
// Copyright © GoodRequest s.r.o. All rights reserved.

import SwiftUI

public struct BackgroundComponent: View {

    @State private var hueRotation = false

    public init() { }

    public var body: some View {
        ZStack(alignment: .leading)  {
            RoundedRectangle(cornerRadius: 16)
                .fill(
                    LinearGradient(
                        colors: [Color.blueBright.opacity(0.6), Color.blueDark.opacity(0.6)],
                        startPoint: .leading,
                        endPoint: .trailing
                    )
                )
                .hueRotation(.degrees(hueRotation ? 20 : -20))

            Text("Slide to unlock")
                .font(.footnote)
                .bold()
                .foregroundColor(.white)
                .frame(maxWidth: .infinity)
        }
        .onAppear {
            withAnimation(.linear(duration: 3).repeatForever(autoreverses: true)) {
                hueRotation.toggle()
            }
        }
    }

}
