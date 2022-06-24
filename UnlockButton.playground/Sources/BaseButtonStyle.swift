//
// 21/06/2022
//
// Created by: Valerie Abelovska
// Copyright © GoodRequest s.r.o. All rights reserved.

import SwiftUI

public struct BaseButtonStyle: ButtonStyle {

    public init() { }

    public func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .scaleEffect(configuration.isPressed ? 0.95 : 1)
            .opacity(configuration.isPressed ? 0.9 : 1)
            .animation(.default, value: configuration.isPressed)
    }

}
