//
//  InfoViewController.swift
//  circuito
//
//  Created by MacBook on 11/22/16.
//  Copyright © 2016 Hector Rincon. All rights reserved.
//

import UIKit

class InfoViewController: AppController {
    
    
    @IBOutlet weak var lbNomRuta: UILabel!
    @IBOutlet weak var lbHMTitle: UILabel!
    @IBOutlet weak var lbHMTime: UILabel!
    @IBOutlet weak var lbHVTitle: UILabel!
    @IBOutlet weak var lbHVTime: UILabel!
    
    var sNomRuta : String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Información"
        lbHMTitle.text = "Horario:"
        lbHMTime.text = "7:00 AM - 7:00 PM"
        lbHVTitle.text = ""
        lbHVTime.text = ""
    }
    
    override func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        let currOption = nav.selectedOption
        super.pickerView(pickerView, didSelectRow: row, inComponent: component)
        if nav.selectedOption == currOption {
            return
        }
        lbNomRuta.text = nav.selectedOption
        
        if nav.selectedOption == "Ruta Garza Sada" {
            lbHMTitle.text = "Horario:"
            lbHMTime.text = "7:00 AM - 7:00 PM"
            lbHVTitle.text = ""
            lbHVTime.text = ""
        }
        else {
            lbHMTitle.text = "Horario matutino:"
            lbHMTime.text = "7:00 AM - 12:59 PM"
            lbHVTitle.text = "Horario vespertino:"
            lbHVTime.text = "1:00 PM - 7:00 PM"
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
