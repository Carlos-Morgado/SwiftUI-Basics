//
//  UIKitView.swift
//  SwiftUI-Basics
//
//  Created by Carlos Morgado on 23/6/23.
//

import SwiftUI
import MapKit

struct UIKitView: UIViewRepresentable {
    func makeUIView(context: Context) -> MKMapView {
        MKMapView(frame: .zero)
    }
    
    func updateUIView(_ uiView: MKMapView, context: Context) {
        let coordinate = CLLocationCoordinate2D(latitude: 40.6817400, longitude: -4.0909500)
        let span = MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05)
        let region = MKCoordinateRegion(center: coordinate, span: span)
        uiView.setRegion(region, animated: true)
    }
}

struct UIKitView_Previews: PreviewProvider {
    static var previews: some View {
        UIKitView()
    }
}
