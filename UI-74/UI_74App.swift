//
//  UI_74App.swift
//  UI-74
//
//  Created by にゃんにゃん丸 on 2020/12/16.
//

import SwiftUI

@main
struct UI_74App: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .windowStyle(HiddenTitleBarWindowStyle())
    }
}
extension NSTextField{
    open override var focusRingType: NSFocusRingType{
        
        get{.none}
        set{}
    }
    
}
