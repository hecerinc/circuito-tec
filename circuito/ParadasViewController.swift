//
//  ParadasViewController.swift
//  circuito
//
//  Copyright © 2016 Ana Karen. All rights reserved.
//

import UIKit

class ParadasViewController: AppController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var myTableView: UITableView!
    @IBOutlet weak var directionView: UIView!
    
    @IBOutlet weak var lbNombre: UILabel!
    @IBOutlet weak var lbDireccion: UILabel!
    
    
    var arrDictParadas : NSArray!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let path = Bundle.main.path(forResource: "Property List Paradas", ofType: "plist")
        arrDictParadas = NSArray(contentsOfFile: path!)
        
        //myTableView.dataSource = self
      
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
        return cell
    }
    
    // se llama cuando se selecciona un renglon del tableView
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let dict = arrDictParadas[indexPath.row] as! NSDictionary
        lbNombre.text = dict.value(forKey: "nombre") as! String?
        lbDireccion.text = dict.value(forKey: "direccion") as! String?

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
