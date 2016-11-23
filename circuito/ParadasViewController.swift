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
    
    
    @IBOutlet weak var routeBtn: UIButton!
    
    var ruta : Int = 0 // 0 ruta garza sada, 1 ruta hospitales
    var arrDictParadas : NSArray!
    var barController : [UIViewController]!
    var path = Bundle.main.path(forResource: "Property List Paradas", ofType: "plist")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Paradas";
        
        if ruta == 1 { // ruta hospitales
            path = Bundle.main.path(forResource: "Property List Ruta Hosp", ofType: "plist")
        }
        routeBtn.layer.cornerRadius = 4
        arrDictParadas = NSArray(contentsOfFile: path!)
        let dict = arrDictParadas[0] as! NSDictionary
        lbNombre.text = dict.value(forKey: "nombre") as! String?
        lbDireccion.text = dict.value(forKey: "direccion") as! String?
        barController = self.tabBarController?.viewControllers
        
        //myTableView.dataSource = self
        
        
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        let mapview = barController[2] as! NavController
        if mapview.selectedOption != "" {
            routeBtn.setTitle(mapview.selectedOption, for: UIControlState.normal)

        }
        else{
            routeBtn.setTitle(Globals._rutas[0], for: UIControlState.normal)
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
