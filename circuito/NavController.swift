//
//  NavController.swift
//  circuito
//
//  Created by MacBook on 11/22/16.
//  Copyright © 2016 Hector Rincon. All rights reserved.
//

import UIKit

class NavController: UINavigationController {
    var selectedOption : String! = ""
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.navigationBar.barTintColor = UIColor(red: 0/255, green: 118/255, blue: 235/255, alpha: 1.0)
        self.navigationBar.tintColor = UIColor.white
        self.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName: UIColor.white]
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
