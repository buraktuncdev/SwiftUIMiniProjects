//
//  ContentView.swift
//  ProfilePage
//
//  Created by Burak Tunc on 25.07.2020.
//  Copyright © 2020 Burak Tunç. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 0.42, green: 0.16, blue: 0.17)
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Image("buraktuncprofilepicture")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150.0, height: 150.0, alignment: .center)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .overlay(
                        Circle().stroke(Color.white, lineWidth: 3)
                )
                
                
                Text("Burak Tunç")
                    .font(Font.custom("Rowdies-Bold", size: 30))
                    .bold()
                    .foregroundColor(.white)
                Text("iOS Developer")
                    .foregroundColor(.white)
                    .font(Font.custom("Rowdies-Bold", size: 20))
                
                Divider()
                
                InfoView(text: "+90 111 22 99", imageName: "phone.fill")
                InfoView(text: "buraktuncdev@gmail.com", imageName: "envelope.fill")
                
                LinkView()
            }
            
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}




struct LinkView: View {
    var body: some View {
        ZStack {
            Color(red: 0.42, green: 0.16, blue: 0.17)
            HStack {
                Image("linkedin")
                    .resizable()
                    .frame(width: 60, height: 60, alignment: .center)
                Image("github")
                    .resizable()
                    .frame(width: 60, height: 60, alignment: .center)
                Image("instagram")
                    .resizable()
                    .frame(width: 60, height: 60, alignment: .center)
                
            }
        }.frame(height: 120)
    }
}
