//
// 21/06/2022
//
// Created by: Valerie Abelovska
// Copyright © GoodRequest s.r.o. All rights reserved.

import SwiftUI
import PlaygroundSupport

public struct UnlockButton: View {

    @State private var isLocked = true
    @State private var isLoading = false

    public init() { }

    public var body: some View {
        GeometryReader { geometry in
            ZStack(alignment: .leading) {
                BackgroundComponent()
                DraggingComponent(isLocked: $isLocked, isLoading: isLoading, maxWidth: geometry.size.width)
            }
        }
        .frame(height: 50)
        .padding()
        .padding(.bottom, 20)
        .onChange(of: isLocked) { isLocked in
            guard !isLocked else { return }
            simulateRequest()
        }
    }

    private func simulateRequest() {
        isLoading = true

        DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
            isLoading = false
        }
    }

}

// MARK: - Live View

PlaygroundPage.current.setLiveView(UnlockButton().frame(width: 450, height: 200))
