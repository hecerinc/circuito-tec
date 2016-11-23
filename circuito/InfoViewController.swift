//
//  InfoViewController.swift
//  circuito
//
//  Created by MacBook on 11/22/16.
//  Copyright © 2016 Hector Rincon. All rights reserved.
//

import UIKit

class InfoViewController: UIViewController {
    
    @IBOutlet weak var routeBtn: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Información"
        // Do any additional setup after loading the view.
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
