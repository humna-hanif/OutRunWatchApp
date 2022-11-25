//
//  TimerCell.swift
//  FitLife Watch App
//
//  Created by Humna Hanif on 11/24/22.
//

import SwiftUI

struct TimerCell: View {
    var leftTimer: TimerModel
    var rightTimer: TimerModel
    
    var body: some View {
        HStack{
            NavigationLink(
                destination: TimerView(timerModel: leftTimer),
                label: {
                    dialView(title: leftTimer.timeTitle, subtitle: leftTimer.unitTitle)
                }).buttonStyle(PlainButtonStyle())
            
            NavigationLink(
                destination: TimerView(timerModel: rightTimer),
                label: {
                    dialView(title: rightTimer.timeTitle, subtitle: rightTimer.unitTitle)
                }).buttonStyle(PlainButtonStyle())
        }.foregroundColor(Color.white.opacity(0.3))
            .frame(height: WKInterfaceDevice.current().screenBounds.height * 0.48)
        }
    
    private func dialView(title: String, subtitle: String) -> some View {
        ZStack {
            TickView()
            VStack {
                Text(title)
                    .font(.system(size: 24))
                    .bold()
                    .foregroundColor(.orange)
                
                Text(subtitle)
                    .font(.system(size: 12))
                    .foregroundColor(.white)
            }
        }
        .padding()
        .background(Color.white.opacity(0.2))
        .clipShape(Circle())
    }
}

struct TimerCell_Previews: PreviewProvider {
    static var previews: some View {
        TimerCell(leftTimer: TimerModel.allTimerValues()[0], rightTimer: TimerModel.allTimerValues()[1])
    }
}
