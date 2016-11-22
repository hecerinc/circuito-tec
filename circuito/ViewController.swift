//
//  ViewController.swift
//  circuito
//
//  Copyright © 2016 Hector Rincon. All rights reserved.
//

import UIKit
import GoogleMaps
import Alamofire
import AEXML


class ViewController: AppController {

    @IBOutlet weak var viewMap: GMSMapView!
    var arrMarksCircuito = [GMSMarker]()
    // llama al web service cada 2 segundos
    var timer = Timer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let camera = GMSCameraPosition.camera(withLatitude: 25.651783081997173, longitude: -100.2932983, zoom: 14.0)
        //let mapView = GMSMapView.map(withFrame: CGRect.zero, camera: camera)
        viewMap.isMyLocationEnabled = true
        viewMap.camera = camera
        
        let routePath = makeRoutePath()
        let polyLine = GMSPolyline(path: routePath)
        polyLine.strokeWidth = 3.0
        polyLine.strokeColor = UIColor.blue
        polyLine.map = viewMap
        
        // Add markers
        
        let marker = GMSMarker()
        marker.position = CLLocationCoordinate2D(latitude: 25.651431, longitude: -100.29106)
        marker.title = "Tec de Monterrey"
        marker.snippet = "Campus Monterrey"
        marker.map = viewMap
        buildStops()
        
        uploadCircuito()
    }
    func makeRoutePath() -> GMSMutablePath {
        let path = GMSMutablePath()
        
        for coord in Globals.mapCoords{
            path.add(CLLocationCoordinate2D(latitude: coord.1, longitude: coord.0))
        }
        
        return path
    }
    func buildStops () -> Void {
        var marker : GMSMarker
        for stop in Globals.paradas {
            marker = GMSMarker()
            marker.position = CLLocationCoordinate2D(latitude: stop.1, longitude: stop.0)
            marker.map = viewMap
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        
    }
    
    // funcion para llamar al web service
    func uploadCircuito() -> Void {
        scheduledTimerWithTimeInterval()
        var arrLat = [Double]()
        var arrLong = [Double]()
        Alamofire.request("http://ws.locatel.es/servicios/vehiculos/vehiculos.asmx/ListaVehiculos?usuario=tec1&password=tec1").responseString { response in
            print("Success: \(response.result.isSuccess)")
            //print("Response String: \(response.result.value!)")
            do {
                let xmldoc = try AEXMLDocument(xml: response.result.value!)
                for ult_latitud in xmldoc.root["diffgr:diffgram"]["Flota"]["coches"]["ult_latitud"].all!{
                    arrLat.append((ult_latitud.string as NSString).doubleValue)
                }
                for ult_longitutd in xmldoc.root["diffgr:diffgram"]["Flota"]["coches"]["ult_longitud"].all!{
                    arrLong.append((ult_longitutd.string as NSString).doubleValue)
                }
                
                // primero elimina los markers existentes luego repinta
                for i in 0...self.arrMarksCircuito.count-1 {
                    self.arrMarksCircuito[i].map = nil
                    print("borrado exitoso")
                }
                if self.arrMarksCircuito.count > 0 {
                    self.arrMarksCircuito.removeAll()
                }
                
                // repinta markers de circuito
                for i in 0...arrLat.count-1 {
                    print("agregado")
                    print(arrLat[i])
                    print(arrLong[i])
                    let marker = GMSMarker()
                    marker.position = CLLocationCoordinate2D(latitude: arrLat[i], longitude: arrLong[i])
                    marker.title = "Circuito Tec"
                    marker.snippet = "Localizacion real"
                    marker.icon = GMSMarker.markerImage(with: UIColor.blue)
                    marker.map = self.viewMap
                    self.arrMarksCircuito.append(marker)
                }
                //print(xmldoc.root["diffgr:diffgram"]["Flota"]["coches"]["ult_latitud"].value!)
                //print(xmldoc.root["diffgr:diffgram"]["Flota"]["coches"]["ult_longitud"].value!)
                //["DataSet"]["diffgr:diffgram"]["Flota"]["coches"]["ult_latitud"].value
            } catch{
                print(error)
            }
        }
    }
    
    func scheduledTimerWithTimeInterval(){
        // Scheduling timer to Call the function **Countdown** with the interval of 1 seconds
        timer = Timer.scheduledTimer(timeInterval: 2, target: self, selector: #selector(self.uploadCircuito), userInfo: nil, repeats: true)
    }


}

