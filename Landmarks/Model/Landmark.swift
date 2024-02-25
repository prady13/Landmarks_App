import Foundation
import SwiftUI
import CoreLocation

struct Landmark: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String
    
    private var imageName: String
    var image: Image {
        Image(imageName)
        
    }
    
        private var coordinates: Coordinates        //Add a coordinates property to the structure using a nested Coordinates type that                                             reflects the storage in the JSON data structure.
                                                    //You mark this property as private because you’ll use it only to create a public computed property in the next step.

        var locationCoordinate: CLLocationCoordinate2D {  //locationCoordinate property that’s useful for interacting with the MapKit framework.
            CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude)
    }
        
        struct Coordinates: Hashable, Codable {
            var latitude: Double
            var longitude: Double
    }
}


