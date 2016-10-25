//
//  ViewController.swift
//  circuito
//
//  Created by Hector Rincon on 10/24/16.
//  Copyright © 2016 Hector Rincon. All rights reserved.
//

import UIKit
import GoogleMaps


class ViewController: UIViewController {

    @IBOutlet weak var viewMap: GMSMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let camera = GMSCameraPosition.camera(withLatitude: -33.86, longitude: 151.20, zoom: 6.0)
        //let mapView = GMSMapView.map(withFrame: CGRect.zero, camera: camera)
        viewMap.isMyLocationEnabled = true
        viewMap.camera = camera
        
        
        
        let marker = GMSMarker()
        marker.position = CLLocationCoordinate2D(latitude: -33.86, longitude: 151.20)
        marker.title = "Sydney"
        marker.snippet = "Australia"
        marker.map = viewMap
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

