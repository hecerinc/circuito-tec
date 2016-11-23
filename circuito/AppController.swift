//
//  AppController.swift
//  circuito
//
//

import UIKit

class AppController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    @IBOutlet var routePicker: UIPickerView!
    //var selectedOption = ""
    @IBOutlet weak var routeBtn : UIButton!
    var nav : NavController!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let vh = self.view.frame.height
        routePicker = UIPickerView(frame: CGRect(x: 0, y: vh, width: self.view.frame.width, height: 100))
        routePicker.isHidden = true
        routePicker.dataSource = self
        routePicker.delegate = self
        routePicker.backgroundColor = UIColor.white
        routeBtn.layer.cornerRadius = 4
        nav = tabBarController?.viewControllers?[0] as! NavController
        UIApplication.shared.keyWindow?.addSubview(routePicker)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        let selectedOption = nav.selectedOption
        if selectedOption != "" {
            routeBtn.setTitle(selectedOption, for: UIControlState.normal)
        }
        else{
            routeBtn.setTitle(Globals._rutas[0], for: UIControlState.normal)
        }
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
        //let navbar = barController[2] as! NavController
        //navbar.selectedOption = Globals._rutas[row]
        //selectedRoute = Globals._rutas[row]
        nav.selectedOption = Globals._rutas[row]
        //print("row changed")
        //print(selectedOption)
        let currpos = routePicker.center
        let newpos = CGPoint(x: currpos.x, y: currpos.y+routePicker.frame.height)
        UIView.animate(withDuration: 0.2, animations: {self.routePicker.center = newpos}, completion: {(complete: Bool) in self.routePicker.isHidden = true})
        
    }
    @IBAction func routeBtnClick(_ sender: UIButton) {
        if !routePicker.isHidden {
            return
        }
        routePicker.isHidden = false
        let currpos = routePicker.center
        let newpos = CGPoint(x: currpos.x, y: currpos.y-100)
        UIView.animate(withDuration: 0.2, animations: {self.routePicker.center = newpos}, completion: nil)
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
