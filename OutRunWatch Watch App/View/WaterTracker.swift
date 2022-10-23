//
//  WaterTracker.swift
//  OutRunWatch Watch App
//
//  Created by Humna Hanif on 10/16/22.
//

import SwiftUI

struct WaterTracker: View {
    var body: some View {
        
        
        
        GeometryReader{reader in
            
            let rect = reader.frame(in: .global)
            
            VStack(spacing: 15){
                HStack(spacing: 25) {
                    //Buttons
                    
                    NavButton(image: "minus", title: "", rect: rect, color: Color("orange"))
                    
                    Text("0")
                    
                    NavButton(image: "plus", title: "", rect: rect, color: Color("orange"))
                    
                }
            }
        }
    }
}
    
    struct WaterTracker_Previews: PreviewProvider {
        static var previews: some View {
            WaterTracker()
        }
    }
