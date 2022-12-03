//
//  MyGoals.swift
//  OutRunWatch Watch App
//
//  Created by Humna Hanif on 10/16/22.
//

import SwiftUI


struct MyGoals: View {

    var body: some View {
        VStack{
            List {
                Text("Walk 1.5-2 Miles")
                Text("3 x 10-Min Walks, Easy Pace")
                Text("30-Min Walk, Brisk")
                Text("30-Min Walk, Easy Pace + Strength Workout")
                Text("2 x 30-Min Walks, Easy Pace")
                Text("60-Min Walk, Brisk")
                Text("Run for 30 minutes")
                
                
            }
        }

    }
}
    
struct MyGoals_Previews: PreviewProvider {
    static var previews: some View {
        MyGoals()
    }
}



