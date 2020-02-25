//
//  ContentView.swift
//  HowToBuildAndCustomizeButtons
//
//  Created by ramil on 25.02.2020.
//  Copyright © 2020 com.ri. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            
            // Normal Button
            Button(action: { }, label: {
              Text("This is a button")
            })
            
            // Button Customization
            Button(action: { }, label: {
              Text("This is a button")
                .padding()
                .foregroundColor(.white)
                .background(Color.blue)
                .cornerRadius(8)
            })
            
            // Shadow
            .shadow(color: Color.blue, radius: 20, y: 5)
            
            // infinity Corner Radius
            .cornerRadius(.infinity)
            
            // Border
            .padding()
            .border(Color.blue)
            
            // or
            .padding()
            .background(RoundedRectangle(cornerRadius: 10).stroke(Color.blue, lineWidth: 2))
            
            // Button With Image
            Button(action: {}) {
              HStack{
                Text("This is a button")
                .padding(.horizontal)
                Image(systemName: "person.crop.circle.fill")
              }
              .padding()
            }
            .foregroundColor(Color.white)
            .background(Color.blue)
            .cornerRadius(8)
            
            Button(action: {}) {
              Image("tesla")
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 200, height: 50)
                .cornerRadius(40)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
