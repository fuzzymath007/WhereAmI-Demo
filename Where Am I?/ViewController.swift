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
            
        var userLocations:CLLocation = locations[0] as CLLocation

            
            
        }
        
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

