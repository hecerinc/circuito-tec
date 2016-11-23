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


class ViewController: AppController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var routeBtn: UIButton!
    @IBOutlet weak var routePicker: UIPickerView!
    @IBOutlet weak var viewMap: GMSMapView!
    var arrMarksCircuito = [GMSMarker]()
    // llama al web service cada 2 segundos
    var timer = Timer()
    
    @IBOutlet weak var rutaBtn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        routePicker.layer.zPosition = 100
        viewMap.layer.zPosition = 2
        routePicker.isHidden = true
        // Do any additional setup after loading the view, typically from a nib.
        rutaBtn.layer.cornerRadius = 4
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
        //buildStops()

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
    
    // MARK: - PickerView
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return Globals._rutas.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return Globals._rutas[row]
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        routeBtn.setTitle(Globals._rutas[row], for: UIControlState.normal)
        let currpos = routePicker.center
        let newpos = CGPoint(x: currpos.x, y: currpos.y+routePicker.frame.height)
        UIView.animate(withDuration: 0.2, animations: {self.routePicker.center = newpos}, completion: {(complete: Bool) in self.routePicker.isHidden = true})
        
    }
    
    
    // funcion para llamar al web service
    func uploadCircuito() -> Void {
        scheduledTimerWithTimeInterval()
        var arrLat = [Double]()
        var arrLong = [Double]()
        Alamofire.request("http://ws.locatel.es/servicios/vehiculos/vehiculos.asmx/ListaVehiculos?usuario=tec1&password=tec1").responseString { response in
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
                if self.arrMarksCircuito.count > 0 {
                    for i in 0...self.arrMarksCircuito.count-1 {
                        self.arrMarksCircuito[i].map = nil
                    }
                
                    self.arrMarksCircuito.removeAll()
                }
                
                // repinta markers de circuito
                for i in 0...arrLat.count-1 {
                    let marker = GMSMarker()
                    marker.position = CLLocationCoordinate2D(latitude: arrLat[i], longitude: arrLong[i])
                    marker.title = "Circuito Tec"
                    marker.snippet = "Localizacion real"
                    marker.icon = UIImage(named: "shuttle")
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
    @IBAction func routeBtnClick(_ sender: UIButton) {
        routePicker.isHidden = false
        print("hello world this")
        let h = routePicker.frame.height
        let currpos = routePicker.center
        let newpos = CGPoint(x: currpos.x, y: currpos.y-h)
        UIView.animate(withDuration: 0.2, animations: {
            self.routePicker.center = newpos
            }, completion: {(complete : Bool) in print(complete); print("end animation")})
    }


}

