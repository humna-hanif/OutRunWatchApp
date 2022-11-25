//
//  TimerSelectionView.swift
//  FitLife Watch App
//
//  Created by Humna Hanif on 11/24/22.
//

import SwiftUI

struct TimerSelectionView: View {
    
    private let timers = TimerModel.allTimerValues()
    
    var body: some View {
        ScrollView {
            TimerCell(leftTimer: timers[0], rightTimer: timers[1])
            TimerCell(leftTimer: timers[2], rightTimer: timers[3])
            TimerCell(leftTimer: timers[4], rightTimer: timers[5])
            TimerCell(leftTimer: timers[6], rightTimer: timers[7])
        }.navigationTitle("Timer")
    }
}

struct TimerSelectionView_Previews: PreviewProvider {
    static var previews: some View {
        TimerSelectionView()
    }
}
