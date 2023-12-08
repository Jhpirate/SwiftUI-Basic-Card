//
//  ContentView.swift
//  ToDo Application
//
//  Created by Jared Heeringa on 12/7/23.
//  Build following: https://www.youtube.com/watch?v=K0t-RCSlasE
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        // Z stack is a depth stack that allows us to stack multiple stacks on top of each other (hence the Z axis)
        ZStack {
            Color(.purple)
                .ignoresSafeArea()
            
            //addin in the vstack to our zstack
            // verticle stack
            VStack(alignment: .leading) {
                Image("NASA_60")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(15)
                    
                
                // Horizontal stack here now (side by side stuff)
                HStack {
                    Text("Test Text Here")
                        .font(.title)
                        .fontWeight(.heavy)
                    
                    Spacer() // take up as much space as possible between the 2 elements
                    
                    // nesting a stack in an hstack to put stuff udner the person icon
                    VStack {
                        //sf symbols (pre baked in apple stuff)
                        HStack {
                            Image(systemName: "person.circle")
                            Image(systemName: "person.circle")
                            Image(systemName: "person.circle")
                        }.foregroundColor(.red)
                            .fontWeight(.bold)
                        
                        Text("I Am a Person!")
                            .foregroundColor(.mint)
                    }
                    
                }
                
                Text("Description Here")
                    .font(.title2)
                
                HStack{
                    Spacer()
                    
                    Image(systemName: "mail.and.text.magnifyingglass")
                    Image(systemName: "mail")
                    Image(systemName: "arrow.left")
                }.foregroundColor(.orange)
                    .opacity(0.5)

            }
            .padding()
            .background(Rectangle()
                .foregroundColor(.green)
                .cornerRadius(25)
                .shadow(radius: 20))
            .padding()
            
            //modified can stack and go in order they are set
            // so above we do padding, background view, then more padding
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
