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
    var paradas = ["Parada 1", "Parada 2", "Parada 3", "Parada 4", "Parada 5", "Parada 6"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
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
        return paradas.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = String(indexPath.row + 1) + " " + paradas[indexPath.row]
        cell.textLabel?.textColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 1)
        cell.textLabel?.font = UIFont.systemFont(ofSize: 45.0)
        return cell
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
