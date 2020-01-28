//
//  LandmarkRow.swift
//  Landmarks
//
//  Created by 周椿杰 on 2020/1/28.
//  Copyright © 2020 Apple. All rights reserved.
//

import SwiftUI

struct LandmarkRow: View {
    // add property for row data
    var landmark: Landmark
    
    var body: some View {
        HStack {
            // set image
            landmark.image.resizable().frame(width: 50, height: 50)
            // set title
            Text(landmark.name)
            
            Spacer()
        }
    }
}

struct LandmarkRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            LandmarkRow(landmark: landmarkData[0])
            LandmarkRow(landmark: landmarkData[1])
        }
        // Use the preview Layout(_:) modifier to set a size that approximates a row in a list
        .previewLayout(.fixed(width: 300, height: 70))
    }
}
