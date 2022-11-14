//
//  WaterTracker.swift
//  OutRunWatch Watch App
//
//  Created by Humna Hanif on 10/16/22.
//

import SwiftUI

struct WaterTracker: View {
    @State private var amount = 0
        
        var body: some View {
            VStack {
                Text("Total Cups: \(amount)")
                    .font(.title2)
                    .bold()
                Stepper("", value: $amount, in: 0...200)
            }
            .labelsHidden()
            .padding()
        }
        }
       

    
    struct WaterTracker_Previews: PreviewProvider {
        static var previews: some View {
            WaterTracker()
        }
    }
