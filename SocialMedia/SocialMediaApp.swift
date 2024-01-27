//
//  SocialMediaApp.swift
//  SocialMedia
//
//  Created by Nodirbek Kadamov on 1/26/24.
//

import SwiftUI
import Firebase

@main
struct SocialMediaApp: App {
    
    @StateObject private var viewModel = SocialMediaViewModel()
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    
    var body: some Scene {
        WindowGroup {
           RootView()
                .environmentObject(viewModel)
        }
    }
}

class AppDelegate: NSObject, UIApplicationDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        FirebaseApp.configure()
        print("Configured Firebase!")
        return true
    }
}
