//
//  LandmarkRow.swift
//  Landmarks
//
//  Created by Pradyumn Saxena on 25/02/24.
//

import SwiftUI

struct LandmarkRow: View {
    //Add landmark as a stored property of LandmarkRow.
    //When you add the landmark property, the preview in the canvas stops working because the LandmarkRow type needs a landmark instance during initialization.
    var landmark: Landmark
    
    var body: some View {
        HStack{
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(landmark.name)
            
            Spacer()
        }
    }
}

#Preview {
    Group { //Group is a container for grouping view content. Xcode renders the                 group’s child views stacked as one preview in the canvas.
        LandmarkRow(landmark: landmarks[0])
        LandmarkRow(landmark: landmarks[1])
    }
}
