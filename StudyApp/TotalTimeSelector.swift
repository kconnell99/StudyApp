//
//  TotalTimeSelector.swift
//  StudyApp
//
//  Created by Katherine Connell on 8/5/19.
//  Copyright © 2019 Katherine Connell. All rights reserved.
//

import SwiftUI

struct TotalTimeSelector : View {
    
    private let timeInterval = Measurement(value: 15, unit: UnitDuration.minutes).converted(to: .seconds).value...Measurement(value: 600, unit: UnitDuration.minutes).converted(to: .seconds).value
    
    @State private var time : TimeInterval = Measurement(value: 15, unit: UnitDuration.minutes).converted(to: .seconds).value
    

    private let formatter : DateComponentsFormatter = {
        let fmt = DateComponentsFormatter()
        fmt.unitsStyle = .abbreviated
        fmt.allowedUnits = [.minute,.hour]
        return fmt
    }()
    
    var body: some View {
        VStack() {
            Text("Time").bold()
            Stepper(
                formatter.string(from: time)!, value: $time, in: timeInterval, step: timeInterval.lowerBound
            )
            .padding(.top)
        }.padding().frame(width: nil, height: nil, alignment: .center)
        
    }
}

#if DEBUG
struct TotalTimeSelector_Previews : PreviewProvider {
    static var previews: some View {
        TotalTimeSelector()
    }
}
#endif
