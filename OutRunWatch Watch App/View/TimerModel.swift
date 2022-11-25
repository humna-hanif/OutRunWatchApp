//
//  TimerModel.swift
//  FitLife Watch App
//
//  Created by Humna Hanif on 11/24/22.
//

import SwiftUI

struct TimerModel {
    var time: Int
    var timeTitle: String {
        return "\(time)"
    }
    
    var unit: TimerUnit
    var unitTitle: String {
        if time > 1 { return unit.plural() }
        return unit.rawValue
    }
    
    init(time: Int, unit: TimerUnit) {
        if time >= 60 {
            self.time = time / 60
            self.unit = .hr
        } else {
            self.time = time
            self.unit = unit
        }
    }
    
    static func allTimerValues() -> [TimerModel] {
        return [
            TimerModel(time: 1, unit: .min),
            TimerModel(time: 3, unit: .min),
            TimerModel(time: 5, unit: .min),
            TimerModel(time: 10, unit: .min),
            TimerModel(time: 15, unit: .min),
            TimerModel(time: 30, unit: .min),
            TimerModel(time: 1, unit: .hr),
            TimerModel(time: 2, unit: .hr)
        ]
    }
    
    enum TimerUnit: String {
        case min = "MIN"
        case hr = "HR"
        
        func plural() -> String {
            switch self {
            case .min:
                return "MINS"
            case .hr:
                return "HRS"
            }
        }
    }
}


