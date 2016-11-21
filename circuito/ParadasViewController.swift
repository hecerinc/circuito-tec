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
        
        imaParada.isHidden = true
        
        if ruta == 1 { // ruta hospitales
            path = Bundle.main.path(forResource: "Property List Ruta Hosp", ofType: "plist")
        }
        
        arrDictParadas = NSArray(contentsOfFile: path!)
        let dict = arrDictParadas[0] as! NSDictionary
        lbNombre.text = dict.value(forKey: "nombre") as! String?
        lbDireccion.text = dict.value(forKey: "direccion") as! String?
       
        
        //myTableView.dataSource = self
        
        let html = "<kml xmlns='http://www.opengis.net/kml/2.2'> <Document> <name>Circuito Tec - Ruta Av. Garza Sada</name> <description><![CDATA[Salida inicial: El Lago de los Patos @1hora]]></description> <Folder> <name>Circuito Tec - Ruta Av. Garza Sada</name> <Placemark> <name>Tabla de Horarios (Entradas y Salidas)</name> <description><![CDATA[<img src=\"https://lh4.googleusercontent.com/proxy/Ovij-Mx8b-8_ar24aEPC2Hr3WNz3UMAcuAl7uypuhH8400nQQOIJ0Hb2jzFb4UwP8b16GsC37t3HC0QGoFfnIuM2IjTuS3BVkBLAmgxxpoxxfRpdUk3alZ3nX7YNDZk\" height=\"200\" width=\"auto\" /><br><br>http://expresotec.mty.itesm.mx/web/circuitotec/rutas.php]]></description> <styleUrl>#icon-ci-1</styleUrl> <ExtendedData> <Data name='gx_media_links'> <value>https://lh4.googleusercontent.com/proxy/Ovij-Mx8b-8_ar24aEPC2Hr3WNz3UMAcuAl7uypuhH8400nQQOIJ0Hb2jzFb4UwP8b16GsC37t3HC0QGoFfnIuM2IjTuS3BVkBLAmgxxpoxxfRpdUk3alZ3nX7YNDZk</value> </Data> </ExtendedData> <Point> <coordinates>-100.2932983,25.6500809,0.0</coordinates> </Point> </Placemark></Folder></Document> </kml>"
        //var xmldoc : AEXMLDocument!
        do {
            let xmldoc = try AEXMLDocument(xml: html)
            print(xmldoc.root["Document"]["name"].value!)
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
    
    @IBAction func mostrarFoto(_ sender: UIButton) {
        imaParada.isHidden = !imaParada.isHidden
    }
    
    @IBAction func quitaFoto () {
        imaParada.isHidden = true
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
