//
//  FirstViewController.swift
//  Beer Map
//
//  Created by swift on 21/12/14.
//  Copyright (c) 2014 swift. All rights reserved.
//

import UIKit
import MapKit

class FirstViewController: UIViewController, MKMapViewDelegate {

    @IBOutlet var theMapView: MKMapView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        var latitude:CLLocationDegrees = 48.896671
        var longitude:CLLocationDegrees = 2.318381
        
        var latdelta:CLLocationDegrees  = 0.003
        var longdelta:CLLocationDegrees = 0.003
        
        var theSpan:MKCoordinateSpan = MKCoordinateSpanMake(latdelta, longdelta)
        
        var ftlocation:CLLocationCoordinate2D = CLLocationCoordinate2DMake(latitude, longitude)
        
        var theRegion:MKCoordinateRegion = MKCoordinateRegionMake(ftlocation, theSpan)
        
        self.theMapView.setRegion(theRegion, animated: true)
        
        var theftAnnotation = MKPointAnnotation()
        theftAnnotation.coordinate = ftlocation
        
        theftAnnotation.title    = "Ecole 42"
        theftAnnotation.subtitle = "Heart of code"
        
        self.theMapView.addAnnotation(theftAnnotation)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

