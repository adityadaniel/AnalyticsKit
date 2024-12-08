//
//  Helpers.swift
//  AnalyticsKit
//
//  Created by Daniel Aditya Istyana on 12/6/24.
//

import Foundation

public var isPreview: Bool {
    return ProcessInfo.processInfo.environment["XCODE_RUNNING_FOR_PREVIEWS"] == "1"
}
