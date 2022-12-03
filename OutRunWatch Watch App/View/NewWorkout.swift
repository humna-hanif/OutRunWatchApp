//
//  NewWorkout.swift
//  OutRunWatch Watch App
//
//  Created by Humna Hanif on 10/16/22.
//

import SwiftUI

struct NewWorkout: View {
    var body: some View {
        NavigationView {
            
            // Reader for Getting Frame
            
            GeometryReader{reader in
                
                let rect = reader.frame(in: .global)
                
                VStack(spacing: 15){
                    HStack(spacing: 25) {
                        //Buttons
                        
                        NavigationLink(
                            destination: TimerSelectionView(),
                            label: {
                                NavButton(image: "circle", title: "Walk", rect: rect, color: Color("orange"))
                            })
                        .buttonStyle(PlainButtonStyle())
                        
                            }

                    
                    HStack(spacing: 25) {
                        //Buttons
                        
                        NavigationLink(
                            destination: TimerSelectionView(),
                            label: {
                                NavButton(image: "circle", title: "Run", rect: rect, color: Color("orange"))
                            }) .buttonStyle(PlainButtonStyle())

                    }
                    .frame(width: rect.width, alignment: .center)
                }
            }
        }
    }
}

struct NewWorkout_Previews: PreviewProvider {
    static var previews: some View {
        NewWorkout()
    }
}
