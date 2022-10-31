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
            Text("Walk")
            ProgressView(value: /*@START_MENU_TOKEN@*/0.5/*@END_MENU_TOKEN@*/)
            Text("Run")
            ProgressView(value: /*@START_MENU_TOKEN@*/0.5/*@END_MENU_TOKEN@*/)
            Text("Cycle")
            ProgressView(value: /*@START_MENU_TOKEN@*/0.5/*@END_MENU_TOKEN@*/)
        }

    }
}
    
struct MyGoals_Previews: PreviewProvider {
    static var previews: some View {
        MyGoals()
    }
}



