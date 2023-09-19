//
//  RahalApp.swift
//  Rahal
//
//  Created by Abdelrahman Esmail on 08/09/2023.
//

import SwiftUI

@main
struct RahalApp: App {
    var body: some Scene {
        WindowGroup {
            if UserData.getUserModel() != nil {
                MainTabView()
            } else {
                SplashView()
            }
        }
    }
}
