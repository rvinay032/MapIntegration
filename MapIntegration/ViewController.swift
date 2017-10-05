//
//  ViewController.swift
//  MapIntegration
//
//  Created by appinventiv on 04/10/17.
//  Copyright © 2017 appinventiv. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController {

    
    
    @IBAction func tapBtn(_ sender: UIButton) {
        
        let latitude:CLLocationDegrees = 28.6297
        let longitude:CLLocationDegrees = 77.3763
        
        let regionDistance:CLLocationDistance = 1000;
        let coordinates = CLLocationCoordinate2DMake(latitude, longitude)
        let regionSpan = MKCoordinateRegionMakeWithDistance(coordinates, regionDistance, regionDistance)
        
        let options = [MKLaunchOptionsMapCenterKey: NSValue(mkCoordinate: regionSpan.center), MKLaunchOptionsMapSpanKey: NSValue(mkCoordinateSpan: regionSpan.span)]
        
        let placemark = MKPlacemark(coordinate: coordinates)
        let mapItem = MKMapItem(placemark: placemark)
        mapItem.name = "AppInventiv"
        mapItem.openInMaps(launchOptions: options)
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

   
}

