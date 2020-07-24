//
//  ContentView.swift
//  BookScreen
//
//  Created by Burak Tunc on 24.07.2020.
//  Copyright © 2020 Burak Tunç. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        
        VStack {
            List {
                BookView(title: "A Tale of Two Cities", author: "Charles Dickens")
                BookView(title: "Exhalation", author: "Ted Chiang")
                BookView(title: "Sum", author: "David Eagleman")
            }
            Form {
                BookView(title: "A Tale of Two Cities", author: "Charles Dickens")
                BookView(title: "Exhalation", author: "Ted Chiang")
                BookView(title: "Sum", author: "David Eagleman")
            }
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct BookView: View {
    var title: String
    var author: String
    
    var body: some View {
        HStack {
            Image(systemName: "book")
                .resizable()
                .frame(width: 50, height: 50)
                .foregroundColor(.purple)
            
            VStack(alignment: .leading) {
                Text(title)
                    .font(.title)
                Text(author)
                    .foregroundColor(.gray)
            }
            
        }
    }
}
