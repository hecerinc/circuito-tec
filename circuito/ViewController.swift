//
//  ViewController.swift
//  circuito
//
//  Copyright © 2016 Hector Rincon. All rights reserved.
//

import UIKit
import GoogleMaps


class ViewController: AppController {

    @IBOutlet weak var viewMap: GMSMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let camera = GMSCameraPosition.camera(withLatitude: 25.651783081997173, longitude: -100.2932983, zoom: 14.0)
        //let mapView = GMSMapView.map(withFrame: CGRect.zero, camera: camera)
        viewMap.isMyLocationEnabled = true
        viewMap.camera = camera
        
        let routePath = makeRoutePath()
        let polyLine = GMSPolyline(path: routePath)
        polyLine.strokeWidth = 5.0
        polyLine.strokeColor = UIColor.blue
        polyLine.map = viewMap
        
        let marker = GMSMarker()
        marker.position = CLLocationCoordinate2D(latitude: 25.651431, longitude: -100.29106)
        marker.title = "Tec de Monterrey"
        marker.snippet = "Campus Monterrey"
        marker.map = viewMap
        
    }
    func makeRoutePath() -> GMSMutablePath {
        let path = GMSMutablePath()
        
        for coord in mapCoords{
            path.add(CLLocationCoordinate2D(latitude: coord.1, longitude: coord.0))
        }
        
        return path
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        
    }


}

