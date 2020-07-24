//
//  ContentView.swift
//  I Am Rich
//
//  Created by Burak Tunc on 25.07.2020.
//  Copyright © 2020 Burak Tunç. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(.orange)
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Text("I Am Rich")
                    .font(.system(size: 40))
                    .fontWeight(.bold)
                    .foregroundColor(Color.white)
                Image("diamond")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 400, height: 400, alignment: .center)
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
