//
//  MapView.swift
//  FoodPin
//
//  Created by Jeff Chiu on 2023/5/4.
//
import SwiftUI
import MapKit

struct MapView: View {
    var location: String = ""
    
    @State private var region: MKCoordinateRegion = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 51.510357, longitude: -0.116773), span: MKCoordinateSpan(latitudeDelta: 1.0, longitudeDelta: 1.0))
    
    var body: some View {
        Map(coordinateRegion: $region)
    }
}


private func convertAddress(location: String) {
    
    //取得位置
    let geoCoder = CLGeocoder()
    
    geoCoder.geocodeAddressString(location, completionHandler: { placemarks, error in
        if let error = error {
            print(error.localizedDescription)
            return
        }
        
        guard let placemarks = placemarks,
              let location = placemarks[0].location else {
            return
        }
        
        self.region = MKCoordinateRegion(center: location.coordinate, span: MKCoordinateSpan(latitudeDelta: 0.0015, longitudeDelta: 0.0015))
        
    })
}
