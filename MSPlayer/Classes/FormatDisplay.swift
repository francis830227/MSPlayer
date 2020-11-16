//
//  FormatDisplay.swift
//  MSPlayer_Example
//
//  Created by Mason on 2018/4/19.
//  Copyright © 2018年 CocoaPods. All rights reserved.
//

import Foundation

struct FormatDisplay {
    static func formatSecondsToString(_ seconds: TimeInterval) -> String {
        
        if seconds.isNaN || seconds.isInfinite { return "--:--:--" }
        
        let formatter = DateComponentsFormatter()
        formatter.allowedUnits = [.hour, .minute, .second]
        formatter.unitsStyle = .positional
        formatter.zeroFormattingBehavior = [.pad]

        let formattedString = formatter.string(from: seconds) ?? "--:--:--"
        return formattedString
    }
}
