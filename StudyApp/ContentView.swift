//
//  ContentView.swift
//  StudyApp
//
//  Created by Katherine Connell on 8/5/19.
//  Copyright © 2019 Katherine Connell. All rights reserved.
//

import SwiftUI

struct ContentView : View {
    
    var body: some View {
        NavigationView {
            VStack(alignment: .center) {
                
                Text("How much time do you have?")
                    .font(.title)
                    .fontWeight(.bold)
                .foregroundColor(Color.black)
                TotalTimeSelector()
                NavigationLink.init("Next", destination: TaskAdder())
                    
        }
        }.padding().frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity).background(Color.init(red: 1, green: 0.937, blue: 0.8901, opacity: 1))
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
