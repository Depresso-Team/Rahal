//
//  SplashView.swift
//  Rahal
//
//  Created by Abdalazem Saleh on 2023-09-16.
//

import SwiftUI

struct SplashView: View {
    // MARK: - PROPERTIES
    @State private var isStarted: Bool = false
    // MARK: - BODY
    var body: some View {
        ZStack() {
            Rectangle()
                .foregroundStyle(
                    .linearGradient(colors: [
                        Color("CustomDarkGreenColor"),
                        Color("CustomLightGreenColor"),
                        Color("CustomLightBeigeColor")],
                                    startPoint: .topLeading,
                                    endPoint: .bottomTrailing)
                )
                .ignoresSafeArea()
            Image("logo")
                .scaledToFit()
                .scaleEffect(isStarted ? 1.0: 0.0)
                .onAppear {
                    withAnimation(.linear(duration: 1.5)) {isStarted = true
                    }
                }
        }
    }
}

struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView()
    }
}
