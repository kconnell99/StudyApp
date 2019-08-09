//
//  TimeDivider.swift
//  StudyApp
//
//  Created by Katherine Connell on 8/8/19.
//  Copyright © 2019 Katherine Connell. All rights reserved.
//

import SwiftUI

struct TimeDivider: View {
    
    @State private var task1 = 0.5
    
    var body: some View {
        VStack {
            Text("Divide your time!")
            HStack {
                Text("Task 1 \(task1)")
                Slider(value: $task1)
            }.padding()
            
        }
    }
}

#if DEBUG
struct TimeDivider_Previews: PreviewProvider {
    static var previews: some View {
        TimeDivider()
    }
}
#endif
