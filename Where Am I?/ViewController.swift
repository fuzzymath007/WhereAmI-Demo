//
//  ViewController.swift
//  Where Am I?
//
//  Created by Matthew Chess on 11/13/14.
//  Copyright (c) 2014 Matthew Chess. All rights reserved.
//

import UIKit
import CoreLocation
import MapKit

class ViewController: UIViewController, MKMapViewDelegate, CLLocationManagerDelegate {
    
    var manager:CLLocationManager!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        manager = CLLocationManager()
        manager.delegate = self
        manager.desiredAccuracy = kCLLocationAccuracyThreeKilometers
        manager.requestWhenInUseAuthorization()
        manager.startUpdatingLocation()
        
        func locationManager(manager:CLLocationManager, didUpdateLocations locations:[AnyObject]!){
            
        var userLocation:CLLocation = locations[0] as CLLocation
            
            var lat:CLLocationDegrees = userLocation.coordinate.latitude
            
            var log:CLLocationDegrees = userLocation.coordinate.longitude
            
            var latDelta:CLLocationDegrees = 0.01
            
            var logDelta:CLLocationDegrees = 0.01
            
            var span:MKCoordinateSpan = MKCoordinateSpanMake(latDelta, logDelta)
            
            var location:CLLocationCoordinate2D = CLLocationCoordinate2DMake(lat, log)
            
            var region:MKCoordinateRegion = MKCoordinateRegionMake(location, span)
            
            var annotation = MKPointAnnotation()
            
            println(lat)
            
            println(log)

        }
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

