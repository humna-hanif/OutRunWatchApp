//
//  Timer.swift
//  OutRunWatch Watch App
//
//  Created by Humna Hanif on 10/22/22.
//

import SwiftUI

struct Timer: View {
    @State var secondScreenShown = false
    @State var timerVal = 1
    
    var body: some View {
        VStack{
            Text("Start timer for \(timerVal) seconds")
                .font(.system(size: 14))
            Picker(selection: $timerVal, label: Text("")) {
                Text("1").tag(1)
                Text("5").tag(5)
                Text("10").tag(10)
                Text("15").tag(15)
            }
            NavigationLink(destination: SecondView(secondScreenShown: $secondScreenShown, timerVal: timerVal), isActive: $secondScreenShown, label: {Text("Go")})
        }
    }
}

struct SecondView: View{
    @Binding var secondScreenShown:Bool
    @State var timerVal:Int
    var body: some View {
        VStack{
            
            if timerVal > 0 {
                Text("Time remaining")
                    .font(.system(size: 14))
                Text("\(timerVal)")
                    .font(.system(size: 40))
                    .onAppear(){
                        // Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { _ in
                        if self.timerVal > 0 {
                            self.timerVal -= 1
                        }
                    }
                Text("seconds")
                    .font(.system(size: 14))
                Button(action: {
                    self.secondScreenShown = false
                }) {
                    Text("Cancel")
                        .foregroundColor(.red)
                }
                
            } else {
                Button(action: {
                    self.secondScreenShown = false
                }) {
                    Text("Done")
                        .foregroundColor(.green)
                }
            }
            
        }
        
    }
    
    struct Timer_Previews: PreviewProvider {
        static var previews: some View {
            Timer()
        }
    }
}
