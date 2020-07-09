//
//  ContentView.swift
//  CreditCardAnimationSwiftUI
//
//  Created by Burak Tunc on 9.07.2020.
//  Copyright © 2020 Burak Tunç. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var rotation:Double = 0
    @State private var animating = false
    @State private var imageFlipped = false
    @State private var flipped = true
    
    var body: some View {
        
        ZStack {
            if imageFlipped {
                Image("Group1")
                    .scaleEffect(0.4)
                    .rotation3DEffect(.degrees(180), axis: (x:0, y:1, z:0))
            } else {
                Image("Group2")
                    .scaleEffect(0.4)
            }
        }
            
        .rotation3DEffect(.degrees(rotation), axis: (x:0, y:1, z:0))
        .onTapGesture {
            withAnimation(Animation.linear(duration: 0.4)) {
                self.animating.toggle()
            }
        }
            
        .onAppear(perform: {
            Timer.scheduledTimer(withTimeInterval: 0.01, repeats: true, block: {_ in
                if self.animating {
                    if self.flipped {
                        if self.rotation < 180 {
                            withAnimation(Animation.linear(duration: 0.01)) {
                                self.rotation += 3
                            }
                            if self.rotation == 90 {
                                self.imageFlipped.toggle()
                            } else if self.rotation == 180 {
                                self.animating.toggle()
                                self.flipped.toggle()
                            }
                        }
                    } else {
                        if self.rotation > 0 {
                            withAnimation(Animation.linear(duration: 0.01)) {
                                self.rotation -= 3
                            }
                            if self.rotation == 90 {
                                self.imageFlipped.toggle()
                            } else if self.rotation == 0 {
                                self.animating.toggle()
                                self.flipped.toggle()
                            }
                        }
                    }
                }
            })
        })
        .background(Color.black)
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
