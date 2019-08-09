//
//  Task.swift
//  StudyApp
//
//  Created by Katherine Connell on 8/7/19.
//  Copyright © 2019 Katherine Connell. All rights reserved.
//

import SwiftUI

struct Task: View : Identifiable{

    var task : String
    var color: Color
    
    var body: some View {
        HStack(alignment: .top) {
            Text(task)
                .font(.headline)
        }.frame(maxWidth: .infinity,alignment: .leading).background(color)
    }
}

#if DEBUG
struct Task_Previews: PreviewProvider {
    static var previews: some View {
        Task(task: "math",color: .purple)
    }
}
#endif
