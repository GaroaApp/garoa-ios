//
//  ViewController.swift
//  Garoa
//
//  Created by Lucas da Silva on 2/15/16.
//  Copyright © 2016 Garoa. All rights reserved.
//

import UIKit
import Mapbox

class ViewController: UIViewController, MGLMapViewDelegate {
    
    var mapView: MGLMapView!
    
    let lat: CLLocationDegrees = -26.4537736
    let lon: CLLocationDegrees = -49.1179425

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // Initialize Mapbox view.
        mapView = MGLMapView(frame: view.bounds)
        mapView.autoresizingMask = [.FlexibleWidth, .FlexibleHeight]
        
        // Set the map's center coordinate -26.4537736,-49.1179425.
        mapView.setCenterCoordinate(CLLocationCoordinate2D(latitude: lat, longitude: lon), zoomLevel: 15, animated: false)
        view.addSubview(mapView)
        
        // Set the delegate property of our map view to `self` after instantiating it.
        mapView.delegate = self
        
        let point = MGLPointAnnotation()
        point.coordinate = CLLocationCoordinate2D(latitude: lat, longitude: lon)
        point.title = "Garoa!"
        point.subtitle = "Welcome! :)"
        
        mapView.addAnnotation(point)
    }
    
    func mapView(mapView: MGLMapView, annotationCanShowCallout annotation: MGLAnnotation) -> Bool {
        return true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

