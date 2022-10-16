//
//  Home.swift
//  OutRunWatch Watch App
//
//  Created by Humna Hanif on 10/15/22.
//

import SwiftUI

struct Home: View {
    var body: some View {

        
        // Reader for Getting Frame
        
        GeometryReader{reader in
            
            let rect = reader.frame(in: .global)
            
            VStack(spacing: 15){
                HStack(spacing: 25) {
                    //Buttons
                    
                    NavigationLink(
                        destination: NewWorkout(),
                        label: {
                            NavButton(image: "plus", title: "New Workout", rect: rect, color: Color("orange"))
                        })
                    .buttonStyle(PlainButtonStyle())
                    
                    NavButton(image: "pencil", title: "My Goals", rect: rect, color: Color("orange"))
                }
                .frame(width: rect.width, alignment: .center)
                
                HStack(spacing: 25) {
                    //Buttons
                    
                    NavButton(image: "doc.plaintext", title: "Water Tracker", rect: rect, color: Color("orange"))
                    
                    NavButton(image: "gear", title: "Settings", rect: rect, color: Color("orange"))
                }
                .frame(width: rect.width, alignment: .center)
            }
        }
    }
}
    struct NavButton: View {
        var image: String
        var title: String
        var rect: CGRect
        var color: Color
        var body: some View {
            VStack(spacing: 8) {
                Image(systemName: image)
                    .font(.title2)
                    .frame(width: rect.width / 3, height: rect.width / 3, alignment: .center)
                    .background(color)
                    .clipShape(Circle())
                
                Text(title)
                    .font(.system(size: 10))
                    .foregroundColor(.white)
            }
             
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
