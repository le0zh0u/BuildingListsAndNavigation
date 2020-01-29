//
//  LandmarkList.swift
//  Landmarks
//
//  Created by 周椿杰 on 2020/1/28.
//  Copyright © 2020 Apple. All rights reserved.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        // embed the dynamically generated list of landmark in a NavigationView
        NavigationView {
            List(landmarkData) { landmark in
                // wrap the returned row in a NavigationLink, set LandmarkDetail view as the destination
                NavigationLink(destination: LandmarkDetail(landmark: landmark)){
                    LandmarkRow(landmark: landmark)
                }
            }
                // set the title of navigation bar when displaying the list
            .navigationBarTitle(Text("Landmarks"))
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
