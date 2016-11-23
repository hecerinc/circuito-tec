//
//  ParadasViewController.swift
//  circuito
//
//  Copyright © 2016 Ana Karen. All rights reserved.
//

import UIKit
import AEXML

class ParadasViewController: AppController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var myTableView: UITableView!
    @IBOutlet weak var directionView: UIView!
    
    @IBOutlet weak var lbNombre: UILabel!
    @IBOutlet weak var lbDireccion: UILabel!
    
    @IBOutlet weak var imaParada: UIImageView!
    
    
    
    var ruta : Int = 0 // 0 ruta garza sada, 1 ruta hospitales
    var arrDictParadas : NSArray!
    
    var path = Bundle.main.path(forResource: "Property List Paradas", ofType: "plist")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        if ruta == 1 { // ruta hospitales
            path = Bundle.main.path(forResource: "Property List Ruta Hosp", ofType: "plist")
        }
        
        arrDictParadas = NSArray(contentsOfFile: path!)
        let dict = arrDictParadas[0] as! NSDictionary
        lbNombre.text = dict.value(forKey: "nombre") as! String?
        lbDireccion.text = dict.value(forKey: "direccion") as! String?
       
        
        //myTableView.dataSource = self
        
        let html = "<DataSet xmlns=\"http://locatel.es/\"> <xs:schema xmlns=\"\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns:msdata=\"urn:schemas-microsoft-com:xml-msdata\" id=\"Flota\"> <xs:element name=\"Flota\" msdata:IsDataSet=\"true\" msdata:UseCurrentLocale=\"true\"> <xs:complexType> <xs:choice minOccurs=\"0\" maxOccurs=\"unbounded\"> <xs:element name=\"coches\"> <xs:complexType> <xs:sequence> <xs:element name=\"vehiculo_id\" type=\"xs:int\" minOccurs=\"0\"/> <xs:element name=\"matricula_coche\" type=\"xs:string\" minOccurs=\"0\"/> <xs:element name=\"modelo_coche\" type=\"xs:string\" minOccurs=\"0\"/> <xs:element name=\"conductor\" type=\"xs:string\" minOccurs=\"0\"/> <xs:element name=\"tiene_display\" type=\"xs:unsignedByte\" minOccurs=\"0\"/> <xs:element name=\"uso_acumulado\" type=\"xs:long\" minOccurs=\"0\"/> <xs:element name=\"metros_acumulados\" type=\"xs:long\" minOccurs=\"0\"/> <xs:element name=\"vuelco_detectado\" type=\"xs:unsignedByte\" minOccurs=\"0\"/> <xs:element name=\"sensor_tapa_principal1\" type=\"xs:unsignedByte\" minOccurs=\"0\"/> <xs:element name=\"ult_latitud\" type=\"xs:float\" minOccurs=\"0\"/> <xs:element name=\"ult_longitud\" type=\"xs:float\" minOccurs=\"0\"/> <xs:element name=\"ult_zona1\" type=\"xs:string\" minOccurs=\"0\"/> <xs:element name=\"ult_zona2\" type=\"xs:string\" minOccurs=\"0\"/> <xs:element name=\"ult_zona3\" type=\"xs:string\" minOccurs=\"0\"/> <xs:element name=\"ult_bit_fix\" type=\"xs:unsignedByte\" minOccurs=\"0\"/> <xs:element name=\"ult_fecha\" type=\"xs:dateTime\" minOccurs=\"0\"/> <xs:element name=\"conectado\" type=\"xs:unsignedByte\" minOccurs=\"0\"/> <xs:element name=\"contacto\" type=\"xs:unsignedByte\" minOccurs=\"0\"/> <xs:element name=\"rumbo\" type=\"xs:unsignedByte\" minOccurs=\"0\"/> <xs:element name=\"velocidad\" type=\"xs:unsignedByte\" minOccurs=\"0\"/> <xs:element name=\"parados_virtuales\" type=\"xs:unsignedByte\" minOccurs=\"0\"/> <xs:element name=\"empresa_id\" type=\"xs:int\" minOccurs=\"0\"/> </xs:sequence> </xs:complexType> </xs:element> </xs:choice> </xs:complexType> </xs:element> </xs:schema> <diffgr:diffgram xmlns:msdata=\"urn:schemas-microsoft-com:xml-msdata\" xmlns:diffgr=\"urn:schemas-microsoft-com:xml-diffgram-v1\"> <Flota xmlns=\"\"> <coches diffgr:id=\"coches1\" msdata:rowOrder=\"0\"> <vehiculo_id>33135</vehiculo_id> <matricula_coche>REDILAS</matricula_coche> <modelo_coche>NP300</modelo_coche> <conductor>VARIOS</conductor> <tiene_display>0</tiene_display> <uso_acumulado>12109547</uso_acumulado> <metros_acumulados>150950303</metros_acumulados> <ult_latitud>25.68053</ult_latitud> <ult_longitud>-100.3021</ult_longitud> <ult_zona1>--ESTADOS UNIDOS MEXIC</ult_zona1> <ult_zona2>Nuevo León</ult_zona2> <ult_zona3>Rafael Platón Sánchez. Monterrey</ult_zona3> <ult_bit_fix>1</ult_bit_fix> <ult_fecha>2016-11-21T19:40:19+01:00</ult_fecha> <conectado>1</conectado> <contacto>0</contacto> <rumbo>2</rumbo> <velocidad>0</velocidad> <parados_virtuales>0</parados_virtuales> <empresa_id>8396</empresa_id> </coches> </Flota> </diffgr:diffgram> </DataSet>"
        //var xmldoc : AEXMLDocument!
        do {
            let xmldoc = try AEXMLDocument(xml: html)
            print(xmldoc.root["DataSet"]["diffgr:diffgram"]["Flota"]["coches"]["ult_latitud"])
        } catch{
            print(error)
        }
    
      
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return arrDictParadas.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        //pone valores a las celdas
        let dict = arrDictParadas[indexPath.row] as! NSDictionary
        //cell.textLabel?.text = "\((indexPath.row + 1)) \(dict.value(forKey: "nombre") as! String?)"
        cell.textLabel?.text = dict.value(forKey: "nombre") as! String?
        
        // dar formato a las celdas
        
        cell.textLabel?.textColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 1)
        cell.textLabel?.font = UIFont.systemFont(ofSize: 30.0)
        
        // color de las celdas
        if indexPath.row % 5 == 0 {
            // navy blue
            cell.backgroundColor = UIColor(red: 64/255, green: 87/255, blue: 129/255, alpha: 1)
        }
        else if indexPath.row % 5 == 1 {
            //light blue
            cell.backgroundColor = UIColor(red: 93/255, green: 211/255, blue: 249/255, alpha: 1)
        }
        else if indexPath.row % 5 == 2 {
            // light yellow
            cell.backgroundColor = UIColor(red: 221/255, green: 215/255, blue: 118/255, alpha: 1)
        }
        else if indexPath.row % 5 == 3 {
            // dark yellow
            cell.backgroundColor = UIColor(red: 223/255, green: 207/255, blue: 9/255, alpha: 1)
        }
        else {
            //orange
            cell.backgroundColor = UIColor(red: 183/255, green: 133/255, blue: 46/255, alpha: 1)
        }
        
        return cell

    }
    
    // se llama cuando se selecciona un renglon del tableView
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let dict = arrDictParadas[indexPath.row] as! NSDictionary
        lbNombre.text = dict.value(forKey: "nombre") as! String?
        lbDireccion.text = dict.value(forKey: "direccion") as! String?
        
        
        // color de las celdas
        if indexPath.row % 5 == 0 {
            // navy blue
            directionView.backgroundColor = UIColor(red: 64/255, green: 87/255, blue: 129/255, alpha: 1)
        }
        else if indexPath.row % 5 == 1 {
            //light blue
            directionView.backgroundColor = UIColor(red: 93/255, green: 211/255, blue: 249/255, alpha: 1)
        }
        else if indexPath.row % 5 == 2 {
            // light yellow
            directionView.backgroundColor = UIColor(red: 221/255, green: 215/255, blue: 118/255, alpha: 1)
        }
        else if indexPath.row % 5 == 3 {
            // dark yellow
            directionView.backgroundColor = UIColor(red: 223/255, green: 207/255, blue: 9/255, alpha: 1)
        }
        else {
            //orange
            directionView.backgroundColor = UIColor(red: 183/255, green: 133/255, blue: 46/255, alpha: 1)
        }
        
        
    }
    

    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
