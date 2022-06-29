//
//  Time.swift
//  sonddr
//
//  Created by Paul Mielle on 29/06/2022.
//

import Foundation

func prettyTimeDelta(date: Date) -> String {
    let deltaInSeconds = Date.now.timeIntervalSince(date)
    let timeDelta: String
    if (deltaInSeconds < 1 * 60) { timeDelta = "just now" }
    else if (deltaInSeconds < 3600) { timeDelta = "\(lround(deltaInSeconds / 60)) minutes ago" }
    else if (deltaInSeconds < 24 * 3600) { timeDelta = "\(lround(deltaInSeconds / 3600)) hours ago"}
    else if (deltaInSeconds < 7 * 24 * 3600) { timeDelta = "\(lround(deltaInSeconds / (24 * 3600))) days ago"}
    else if (deltaInSeconds < 30.5 * 24 * 3600) { timeDelta = "\(lround(deltaInSeconds / (7 * 24 * 3600))) weeks ago" }
    else if (deltaInSeconds <= 12 * 30.5 * 24 * 3600) { timeDelta = "\(lround(deltaInSeconds / (30.5 * 24 * 3600))) months ago" }
    else { timeDelta = "\(lround(deltaInSeconds / (12 * 30.5 * 24 * 3600))) years ago" }
    return timeDelta
}
